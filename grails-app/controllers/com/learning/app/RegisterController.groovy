package com.learning.app

import grails.gorm.transactions.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException


@Transactional
@Secured('permitAll')
class RegisterController {

    static allowedMethods = [register: "POST"]

    def index() { }

    def register() {

        if (!params.password.equals(params.repassword)) {
            flash.message = "Password and Re-Password not match"
            redirect action: "index"
            return
        } else {

            try {

                def user =
                        User.findByEmail(params.email) ?: new User(
                                email: params.email,
                                password: params.password,
                                firstName: params.firstName,
                                lastName: params.lastName,
                                address: params.address,
                                phone: params.phone,
                                dateOfBirth: params.dateOfBirth
                        ).save()

                def role = Role.get(2)

                if(user && role) {
                    UserRole.create user, role

                    UserRole.withSession {
                        it.flush()
                        it.clear()
                    }

                    flash.message = "You have registered successfully. Please login."
                    redirect controller: "login", action: "auth"
                } else {
                    flash.message = "Register failed"
                    render view: "index"
                    return
                }
            }catch (ValidationException e) {
                flash.message = "Register Failed"
                redirect action: "index"
                return
            }

        }
    }
}
