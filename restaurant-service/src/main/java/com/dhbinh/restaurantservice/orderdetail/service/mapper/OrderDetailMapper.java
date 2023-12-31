package com.dhbinh.restaurantservice.orderdetail.service.mapper;

import com.dhbinh.restaurantservice.base.mapper.BaseMapper;
import com.dhbinh.restaurantservice.orderdetail.entity.OrderDetail;
import com.dhbinh.restaurantservice.orderdetail.service.dto.OrderDetailDTO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface OrderDetailMapper extends BaseMapper<OrderDetail, OrderDetailDTO> {

    @Mapping(target = "orderId", source = "order.id")
    @Mapping(target = "menuItemName", source = "menuItem.name")
    OrderDetailDTO toDTO(OrderDetail orderDetail);
}
