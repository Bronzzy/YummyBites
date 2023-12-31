package com.dhbinh.restaurantservice.employee.service.dto;

import com.dhbinh.restaurantservice.base.exception.ErrorMessage;
import com.dhbinh.restaurantservice.employee.entity.StatusEnum;
import com.dhbinh.restaurantservice.utils.CommonConstant;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import java.time.LocalDate;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class EmployeeDTO {

    private Long id;

    @NotBlank(message = ErrorMessage.EMPLOYEE_FIRST_NAME_NULL_OR_BLANK)
    @Pattern(regexp = CommonConstant.VALID_NAME_PATTERN, message = ErrorMessage.EMPLOYEE_NAME_CONTAIN_NUMBER)
    private String firstName;

    @NotBlank(message = ErrorMessage.EMPLOYEE_LAST_NAME_NULL_OR_BLANK)
    @Pattern(regexp = CommonConstant.VALID_NAME_PATTERN, message = ErrorMessage.EMPLOYEE_NAME_CONTAIN_NUMBER)
    private String lastName;

    @Past
    @NotNull(message = ErrorMessage.DATE_OF_BIRTH_NULL_OR_BLANK)
    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate dob;

    @NotBlank(message = ErrorMessage.ADDRESS_NULL_OR_BLANK)
    private String address;

    @NotBlank(message = ErrorMessage.PHONE_NULL_OR_BLANK)
    @Pattern(regexp = CommonConstant.PHONE_NUMBER_PATTERN, message = ErrorMessage.PHONE_WRONG_FORMAT)
    private String phone;

    @NotBlank(message = ErrorMessage.EMAIL_NULL_OR_BLANK)
    @Pattern(regexp = CommonConstant.EMAIL_PATTERN, message = ErrorMessage.EMAIL_WRONG_FORMAT)
    private String email;

    @Enumerated(EnumType.STRING)
    private StatusEnum status;

    @NotBlank(message = ErrorMessage.RESTAURANT_NAME_NULL_OR_BLANK)
    private String restaurantName;
}
