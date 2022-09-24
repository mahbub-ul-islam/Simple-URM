package com.learning.app

import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.security.core.GrantedAuthority

class CustomUserDetails extends GrailsUser{

    String firstName
    String lastName
    String address
    String phone
    String dateOfBirth

    CustomUserDetails(
            String email,
            String password,
            boolean enabled,
            boolean accountExpired,
            boolean credentialsNonExpired,
            boolean accountNonLocked,
            Collection<GrantedAuthority> authorities,
            Long id,
            String firstName,
            String lastName,
            String address,
            String phone,
            String dateOfBirth
    ) {

        super(
                email,
                password,
                enabled,
                accountExpired,
                credentialsNonExpired,
                accountNonLocked,
                authorities,
                id
        )

        this.firstName = firstName
        this.lastName = lastName
        this.address = address
        this.phone = phone
        this.dateOfBirth = dateOfBirth

    }

}
