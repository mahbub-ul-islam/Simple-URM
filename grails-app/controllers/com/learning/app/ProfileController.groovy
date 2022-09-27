package com.learning.app

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityService


class ProfileController {

    SpringSecurityService springSecurityService
    UserService userService

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() {
        def user = springSecurityService.getCurrentUser()
        respond userService.get(user.id)
    }
}
