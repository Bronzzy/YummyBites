package com.dhbinh.restaurantservice.base.security.entity;

public enum Role {

    ROLE_OWNER("ROLE_OWNER"),
    ROLE_WAITER("ROLE_WAITER"),
    ROLE_MANAGER("ROLE_MANAGER"),
    ROLE_COOK("ROLE_COOK"),
    ROLE_JANITOR("ROLE_JANITOR"),
    ;

    final String roleName;

    Role(String role_name) {
        this.roleName = role_name;
    }

    @Override
    public String toString() {
        return roleName;
    }
}
