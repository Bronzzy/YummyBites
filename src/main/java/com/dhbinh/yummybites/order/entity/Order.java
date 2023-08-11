package com.dhbinh.yummybites.order.entity;

import com.dhbinh.yummybites.employee.entity.Employee;
import com.dhbinh.yummybites.orderdetail.entity.OrderDetail;
import com.dhbinh.yummybites.diningtable.entity.DiningTable;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(mappedBy = "order",cascade = CascadeType.PERSIST)
    private List<OrderDetail> orderDetails;

    @ManyToOne
    @JoinColumn(name = "employee_id",nullable = false)
    private Employee employee;

    @ManyToOne
    @JoinColumn(name = "table_id",nullable = false)
    private DiningTable diningTable;

    @Column(nullable = false)
    private Double totalPrice;

    @Column(nullable = false)
    private Boolean isPaid;

    @CreationTimestamp
    @Column(nullable = false)
    private LocalDateTime createdDate;
}