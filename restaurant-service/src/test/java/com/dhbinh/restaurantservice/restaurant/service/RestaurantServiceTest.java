package com.dhbinh.restaurantservice.restaurant.service;

import com.dhbinh.restaurantservice.base.exception.InputValidationException;
import com.dhbinh.restaurantservice.base.exception.ResourceNotFoundException;
import com.dhbinh.restaurantservice.restaurant.entity.Restaurant;
import com.dhbinh.restaurantservice.restaurant.repository.RestaurantRepository;
import com.dhbinh.restaurantservice.restaurant.service.dto.RestaurantDTO;
import com.dhbinh.restaurantservice.restaurant.service.mapper.RestaurantMapper;
import com.dhbinh.restaurantservice.utils.Utils;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith({MockitoExtension.class})
class RestaurantServiceTest {

    @InjectMocks
    private RestaurantService restaurantService;

    @Mock
    private RestaurantRepository restaurantRepository;

    @Mock
    private RestaurantMapper restaurantMapper;

    @Autowired
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

    private RestaurantDTO validRestaurantDTO() {
        return RestaurantDTO.builder()
                .id(1L)
                .name("YummyBites")
                .address("4089 Charing Cross Drive")
                .phone("341-724-5075")
                .openHour(LocalTime.of(11, 0, 0))
                .closingHour(LocalTime.of(22, 0, 0))
                .build();
    }

    @Test
    void createRestaurant_WithMandatoryFields_ReturnEntity() {
        Restaurant restaurant = validRestaurant();
        RestaurantDTO dto = validRestaurantDTO();

        when(restaurantRepository.save(any(Restaurant.class))).thenReturn(restaurant);

        Restaurant created = restaurantService.createRestaurant(dto);

        verify(restaurantRepository).save(any(Restaurant.class));

        assertEquals(restaurant.getName(), created.getName());
        assertEquals(restaurant.getAddress(), created.getAddress());
        assertEquals(restaurant.getPhone(), created.getPhone());
        assertEquals(restaurant.getOpenHour(), created.getOpenHour());
        assertEquals(restaurant.getClosingHour(), created.getClosingHour());
    }

    @Test
    void findAll_AvailableRestaurant_ReturnEntityList() {
        List<Restaurant> expectedRestaurants = new ArrayList<>();
        expectedRestaurants.add(new Restaurant());
        expectedRestaurants.add(new Restaurant());

        when(restaurantRepository.findAll()).thenReturn(expectedRestaurants);

        List<Restaurant> actualRestaurants = restaurantService.findAll();

        assertEquals(expectedRestaurants, actualRestaurants);
    }

    @Test
    void findRestaurant_ExistedId_ReturnEntity() {
        Restaurant restaurant = new Restaurant();
        restaurant.setId(1L);
        when(restaurantRepository.findById(1L)).thenReturn(Optional.of(restaurant));

        Restaurant foundedRestaurant = restaurantService.findById(1L);

        assertEquals(1L, foundedRestaurant.getId().longValue());
    }

    @Test
    void findRestaurant_NonExistedId_ThrowException() {
        when(restaurantRepository.findById(999L)).thenReturn(Optional.empty());

        assertThrows(ResourceNotFoundException.class, () -> restaurantService.findById(999L));
    }

    @Test
    void updateRestaurant_WithValidIdAndDTO_ReturnsUpdatedEntity() {
        Long id = 1L;
        RestaurantDTO restaurantDTO = new RestaurantDTO();
        restaurantDTO.setPhone("341-724-5075");
        Restaurant restaurant = new Restaurant();
        restaurant.setPhone("341-724-5075");

        when(restaurantRepository.findById(id)).thenReturn(Optional.of(restaurant));
        when(restaurantRepository.save(any(Restaurant.class))).thenReturn(restaurant);

        doNothing().when(restaurantMapper).mapFromDto(restaurantDTO, restaurant);

        Restaurant updatedRestaurant = restaurantService.update(id, restaurantDTO);

        verify(restaurantRepository, times(1)).findById(id);
        verify(restaurantRepository, times(1)).save(restaurant);
        verify(restaurantMapper, times(1)).mapFromDto(restaurantDTO, restaurant);
        assertEquals(restaurant, updatedRestaurant);
    }

    @Test
    void verifyAndModifyRestaurant_AddressIsUsed_ThrowException() {
        RestaurantDTO restaurantDTO = new RestaurantDTO();
        restaurantDTO.setAddress("Restaurant Address");

        when(restaurantRepository.findByNameIgnoreCase("Restaurant Name")).thenReturn(Optional.empty());
        when(restaurantRepository.findByAddressIgnoreCase("Restaurant Address")).thenReturn(Optional.of(new Restaurant()));

        assertThrows(InputValidationException.class, () -> restaurantService.verifyAndModify(restaurantDTO));
    }

    @Test
    void verifyAndModifyRestaurant_NameIsUsed_ThrowException() {
        RestaurantDTO dto = new RestaurantDTO();
        dto.setName("Restaurant Name");
        when(restaurantRepository.findByNameIgnoreCase("Restaurant Name")).thenReturn(Optional.of(new Restaurant()));

        assertThrows(InputValidationException.class, () -> restaurantService.verifyAndModify(dto));
    }

    @Test
    void verifyAndModifyRestaurant_PhoneNotValidFormat_ThrowException() {
        RestaurantDTO dto = new RestaurantDTO();
        dto.setPhone("290asd245");

        assertThrows(InputValidationException.class, () -> restaurantService.verifyAndModify(dto));
    }


    @Test
    void findRestaurant_NameIgnoreCase_ReturnEntity() {
        String name = "Restaurant 1";
        Restaurant restaurant = new Restaurant();
        restaurant.setName(name);
        when(restaurantRepository.findByNameIgnoreCase(name.trim())).thenReturn(Optional.of(restaurant));

        Restaurant result = restaurantService.findByNameIgnoreCase(name);

        assertEquals(restaurant, result);
    }

    @Test
    void findRestaurant_NameIgnoreCase_NonExistedRestaurant_ThrowException() {
        String name = "Non-existing Restaurant";
        when(restaurantRepository.findByNameIgnoreCase(name.trim())).thenReturn(Optional.empty());

        assertThrows(ResourceNotFoundException.class, () -> restaurantService.findByNameIgnoreCase(name));
    }
}



