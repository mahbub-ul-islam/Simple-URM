package com.learning.app

class BootStrap {

    def init = { servletContext ->
        new Role(authority: 'ROLE_ADMIN').save()
        new Role(authority: 'ROLE_USER').save()

        def user =
                new User(
                        email: "admin@localhost.local",
                        password: "admin",
                        firstName: "admin",
                        lastName: "admin",
                        address: "admin",
                        phone: "admin",
                        dateOfBirth: "05-06-2020"
                ).save()

        def role = Role.get(1)

        if(user && role) {
            UserRole.create user, role

            UserRole.withSession {
                it.flush()
                it.clear()
            }
        }
    }

    def destroy = {
    }
}
