package com.dhbinh.restaurantservice.orderdetail.controller;

import com.dhbinh.restaurantservice.onlineorder.service.dto.OnlineOrderDTO;
import com.dhbinh.restaurantservice.order.service.dto.OrderDTO;
import com.dhbinh.restaurantservice.orderdetail.service.OrderDetailService;
import com.dhbinh.restaurantservice.orderdetail.service.dto.OrderDetailDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.net.URI;
import java.util.List;

@RestController
@RequestMapping(value = "/order-details")
@PreAuthorize("hasAnyRole('OWNER', 'WAITER')")
@Validated
public class OrderDetailResource {

    @Autowired
    private OrderDetailService orderDetailService;

    @PostMapping
    public ResponseEntity<OrderDTO> create(@RequestHeader("Authorization") String token,
                                           @Valid @RequestBody List<OrderDetailDTO> orderDetailDTOList,
                                           @RequestParam("tableNumber") long tableNumber) {
        OrderDTO dto = orderDetailService.create(token, orderDetailDTOList, tableNumber);
        return ResponseEntity.created(URI.create("/api/orders" + dto.getId())).body(dto);
    }
}
