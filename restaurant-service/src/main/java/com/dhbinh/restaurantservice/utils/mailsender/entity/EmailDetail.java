package com.dhbinh.restaurantservice.utils.mailsender.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class EmailDetail {

    private String recipient;

    private String msgBody;

    private String subject;

    private String attachment;
}
