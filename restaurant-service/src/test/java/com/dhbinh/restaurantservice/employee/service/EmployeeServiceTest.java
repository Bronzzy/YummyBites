package com.dhbinh.restaurantservice.employee.service;

import com.dhbinh.restaurantservice.base.exception.ResourceNotFoundException;
import com.dhbinh.restaurantservice.employee.entity.Employee;
import com.dhbinh.restaurantservice.employee.entity.StatusEnum;
import com.dhbinh.restaurantservice.employee.repository.EmployeeRepository;
import com.dhbinh.restaurantservice.employee.service.dto.EmployeeDTO;
import com.dhbinh.restaurantservice.employee.service.mapper.EmployeeMapper;
import com.dhbinh.restaurantservice.restaurant.entity.Restaurant;
import com.dhbinh.restaurantservice.restaurant.service.RestaurantService;
import com.dhbinh.restaurantservice.utils.Utils;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.mockito.junit.jupiter.MockitoSettings;
import org.mockito.quality.Strictness;
import org.springframework.data.jpa.domain.Specification;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static com.dhbinh.restaurantservice.employee.entity.StatusEnum.STATUS_ACTIVE;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith({MockitoExtension.class})
class EmployeeServiceTest {

    @InjectMocks
    private EmployeeService employeeService;

    @Mock
    private EmployeeRepository employeeRepository;

    @Mock
    private RestaurantService restaurantService;

    @Mock
    private EmployeeMapper employeeMapper;

    @Mock
    private Utils utils;

    private Restaurant validRestaurant() {
        return Restaurant.builder()
                .id(1L)
                .name("YummyBites")
                .address("4089 Charing Cross Drive")
                .phone("341-724-5075")
                .openHour(LocalTime.of(11, 0, 0))
                .closingHour(LocalTime.of(22, 0, 0))
                .build();
    }

    private Employee validEmployee() {
        return Employee.builder()
                .id(1L)
                .firstName("John")
                .lastName("Doe")
                .phone("341-724-5075")
                .email("johndoe@example.com")
                .address("4089 Charing Cross Drive")
                .dob(LocalDate.of(1984, 12, 31))
                .status(STATUS_ACTIVE)
                .restaurant(validRestaurant())
                .build();
    }

    private EmployeeDTO validEmployeeDTO() {
        return EmployeeDTO.builder()
                .id(1L)
                .firstName("John")
                .lastName("Doe")
                .phone("341-724-5075")
                .email("johndoe@example.com")
                .address("4089 Charing Cross Drive")
                .dob(LocalDate.of(1990, 12, 31))
                .restaurantName("YummyBites")
                .build();
    }

    @Test
    void createEmployee_MandatoryFields_ReturnEntity() {
        Employee employee = validEmployee();
        EmployeeDTO dto = validEmployeeDTO();

        when(employeeRepository.save(any(Employee.class))).thenReturn(employee);

        Employee created = employeeService.createEmployee(dto);

        verify(employeeRepository).save(any(Employee.class));

        assertEquals(employee.getFirstName(), created.getFirstName());
        assertEquals(employee.getLastName(), created.getLastName());
        assertEquals(employee.getPhone(), created.getPhone());
        assertEquals(employee.getEmail(), created.getEmail());
        assertEquals(employee.getAddress(), created.getAddress());
        assertEquals(employee.getDob(), created.getDob());
        assertEquals(employee.getRestaurant().getName(), created.getRestaurant().getName());
    }

    @Test
    public void findAll_AvailableEmployee_ReturnEntityList() {
        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee());
        employees.add(new Employee());
        when(employeeRepository.findAll()).thenReturn(employees);

        List<Employee> expected = employeeService.findAll();
        verify(employeeRepository).findAll();
        assertEquals(employees.size(), expected.size());
    }

    @Test
    void findEmployee_ExistedId_ReturnEntity() {
        Employee employee = validEmployee();
        employee.setId(1L);

        when(employeeRepository.findById(1L)).thenReturn(Optional.of(employee));

        Employee foundedEmployee = employeeService.findById(1L);

        assertEquals(1L, foundedEmployee.getId().longValue());
    }

    @Test
    void findEmployee_NonExistedId_ThrowException() {
        when(employeeRepository.findById(999L)).thenReturn(Optional.empty());
        assertThrows(ResourceNotFoundException.class, () -> employeeService.findById(999L));
    }

    @Test
    void deleteEmployee_ExistedId_EntityStatusInactive() {
        Long id = 1L;
        Employee employee = new Employee();
        employee.setId(id);
        when(employeeRepository.findById(id)).thenReturn(Optional.of(employee));

        employeeService.deleteEmployee(id);

        verify(employeeRepository, times(1)).findById(id);
        verify(employeeRepository, times(1)).save(employee);
        assertEquals(StatusEnum.STATUS_INACTIVE, employee.getStatus());
    }

    @Test
    public void deleteEmployee_NonExistedId_ThrowException() {
        when(employeeRepository.findById(999L)).thenReturn(Optional.empty());

        assertThrows(ResourceNotFoundException.class, () -> employeeService.deleteEmployee(999L));
    }

    @Test
    public void findEmployee_UnderSpecification_ReturnEntity() {
        String firstName = "John";
        String lastName = "Doe";
        String address = "123 Main St";
        int day = 1;
        int month = 1;
        int year = 1990;
        int ageLessThan = 30;
        int ageGreaterThan = 20;

        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee());

        when(employeeRepository.findAll(any(Specification.class))).thenReturn(employees);
        when(employeeMapper.toDTOList(employees)).thenReturn(new ArrayList<>());

        List<EmployeeDTO> result = employeeService.findWithSpecifications(firstName, lastName, address, day, month, year, ageLessThan, ageGreaterThan);

        assertEquals(0, result.size());
        verify(employeeRepository, times(1)).findAll(any(Specification.class));
        verify(employeeMapper, times(1)).toDTOList(employees);
    }

    @Test
    void findEmployee_ExistedEmail_ReturnEntity() {
        Employee employee = validEmployee();

        when(employeeRepository.findByEmail("johndoe@example.com")).thenReturn(Optional.of(employee));

        Employee result = employeeService.findByEmail("johndoe@example.com");

        assertEquals(result.getFirstName(), employee.getFirstName());
        assertEquals(result.getLastName(), employee.getLastName());
        assertEquals(result.getPhone(), employee.getPhone());
        assertEquals(result.getEmail(), employee.getEmail());
        assertEquals(result.getAddress(), employee.getAddress());
        assertEquals(result.getDob(), employee.getDob());
        assertEquals(result.getRestaurant().getName(), employee.getRestaurant().getName());
    }

    @Test
    void findEmployee_NonExistedEmail_ThrowException() {
        when(employeeRepository.findByEmail("non-existed-email@gmail.com")).thenReturn(Optional.empty());

        assertThrows(ResourceNotFoundException.class, () -> employeeService.findByEmail("non-existed-email@gmail.com"));
    }

    @Test
    @MockitoSettings(strictness = Strictness.LENIENT)
    public void testExportEmployeeList() throws IOException {
        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee(1L, "John", "Doe", LocalDate.of(1990, 12, 30), "Address 1", "123456789", "john.doe@example.com", STATUS_ACTIVE, validRestaurant()));
        employees.add(new Employee(2L, "Jane", "Smith", LocalDate.of(1990, 11, 30), "Address 2", "987654321", "jane.smith@example.com", StatusEnum.STATUS_ACTIVE, validRestaurant()));

        when(employeeRepository.findAll()).thenReturn(employees);

        List<EmployeeDTO> employeeDTOs = new ArrayList<>();
        employeeDTOs.add(new EmployeeDTO(1L, "John", "Doe", LocalDate.of(1990, 12, 30), "Address 1", "123456789", "john.doe@example.com", StatusEnum.STATUS_ACTIVE, "YummyBites"));
        employeeDTOs.add(new EmployeeDTO(2L, "Jane", "Smith", LocalDate.of(1990, 11, 30), "Address 2", "987654321", "jane.smith@example.com", StatusEnum.STATUS_ACTIVE, "YummyBites"));

        when(employeeMapper.toDTOList(employees)).thenReturn(employeeDTOs);

        employeeService.exportEmployeeList();

        File file = new File("employee_data.xlsx");

        try (FileInputStream fileInputStream = new FileInputStream(file)) {
            Workbook workbook = WorkbookFactory.create(fileInputStream);
            Sheet sheet = workbook.getSheet("Employee Data");

            Row titleRow = sheet.getRow(0);
            assertEquals("First Name", titleRow.getCell(0).getStringCellValue());
            assertEquals("Last Name", titleRow.getCell(1).getStringCellValue());
            assertEquals("Address", titleRow.getCell(2).getStringCellValue());
            assertEquals("Phone", titleRow.getCell(3).getStringCellValue());
            assertEquals("Email", titleRow.getCell(4).getStringCellValue());
            assertEquals("Restaurant", titleRow.getCell(5).getStringCellValue());

            for (int i = 0; i < employeeDTOs.size(); i++) {
                Row row = sheet.getRow(i + 1);
                EmployeeDTO employeeDTO = employeeDTOs.get(i);

                assertEquals(employeeDTO.getFirstName(), row.getCell(0).getStringCellValue());
                assertEquals(employeeDTO.getLastName(), row.getCell(1).getStringCellValue());
                assertEquals(employeeDTO.getAddress(), row.getCell(2).getStringCellValue());
                assertEquals(employeeDTO.getPhone(), row.getCell(3).getStringCellValue());
                assertEquals(employeeDTO.getEmail(), row.getCell(4).getStringCellValue());
                assertEquals(employeeDTO.getRestaurantName(), row.getCell(5).getStringCellValue());
            }
        }
    }
}