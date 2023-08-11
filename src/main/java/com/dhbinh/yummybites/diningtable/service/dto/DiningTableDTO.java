package com.dhbinh.yummybites.diningtable.service.dto;

import com.dhbinh.yummybites.base.exception.ErrorMessage;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.Min;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DiningTableDTO {

    private Long id;

    @Min(value = 1, message = ErrorMessage.DINING_TABLE_NUMBER_MIN)
    private Integer number;

    private Boolean occupied;
}