package com.dhbinh.yummybites.employee.entity;

import com.dhbinh.yummybites.restaurant.entity.Restaurant;
import com.fasterxml.jackson.annotation.JsonCreator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "employee")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    @Pattern(regexp = "^[^0-9]*$")
    private String firstName;

    @Column
    @Pattern(regexp = "^[^0-9]*$")
    private String lastName;

    @Column
    private String address;

    @Column
    @Pattern(regexp = "^[0-9]+$")
    private String phone;

    @Column
    @Min(value = 20000)
    private Double baseSalary;

    @Column
    @Pattern(regexp = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$")
    private String email;


    @Column
    @Enumerated(EnumType.STRING)
    private RoleEnum role;

    @Column
    @Enumerated(EnumType.STRING)
    private StatusEnum status;

    @ManyToOne
    @JoinColumn(name = "restaurant", nullable = false)
    private Restaurant restaurant;
}
