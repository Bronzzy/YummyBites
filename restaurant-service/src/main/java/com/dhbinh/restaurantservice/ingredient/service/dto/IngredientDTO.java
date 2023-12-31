package com.dhbinh.restaurantservice.ingredient.service.dto;

import com.dhbinh.restaurantservice.base.exception.ErrorMessage;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class IngredientDTO {

    private Long id;

    @NotBlank(message = ErrorMessage.INGREDIENT_NULL_OR_BLANK)
    private String name;

    @NotNull(message = ErrorMessage.INGREDIENT_QUANTITY_NULL_OR_BLANK)
    @Min(value = 1, message = ErrorMessage.INGREDIENT_QUANTITY_LESS_THAN_ONE)
    private Double quantity;

    @NotBlank(message = ErrorMessage.RESTAURANT_NAME_NULL_OR_BLANK)
    private String restaurantName;
}
