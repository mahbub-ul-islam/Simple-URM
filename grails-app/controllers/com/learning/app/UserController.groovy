package com.learning.app

import grails.converters.JSON
import grails.gorm.PagedResultList
import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException

class UserController {

    UserService userService

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() { }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def data_for_datatable() {

        int draw = params.int("draw")
        int length = params.int("length")
        int start = params.int("start")

        String dataTableOrderColumnIdx = params["order[0][column]"]
        String dataTableOrderColumnName = "columns[" + dataTableOrderColumnIdx + "][data]"

        String sortName = params[dataTableOrderColumnName] ?: "id"
        String sortDir = params["order[0][dir]"] ?: "asc"

        String queryString = params["search[value]"]

        PagedResultList criteriaResult = User.createCriteria().list([max: length, offset:start]) {
            readOnly true
            or {
                ilike('firstName', '%' + queryString + '%')
                ilike('lastName', '%' + queryString + '%')
                ilike('email', '%' + queryString + '%')
                ilike('phone', '%' + queryString + '%')
                ilike('address', '%' + queryString + '%')
            }
            order sortName, sortDir
        }

        Map dataTableResults = [
                draw: draw,
                recordsTotal: criteriaResult.totalCount,
                recordsFiltered: criteriaResult.totalCount,
                data: criteriaResult
        ]

        render dataTableResults as JSON
    }


    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def save(User user) {
        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user, view:'create'
            return
        }

        flash.message = "Customer created successfully"

        redirect(action: "index")

    }


    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def update(User user) {

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'edit'
            return
        }

        flash.message = "Customer updated successfully!"

        redirect(action: "index")
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def edit(Long id) {
        respond userService.get(id)
    }

    @Secured(['ROLE_ADMIN'])
    def delete(Long id) {
        try {
            userService.delete(id)

            flash.message = "Customer Deleted"
        } catch (Exception ex) {
            flash.message = "Could not delete customer"
        }

        redirect action:'index'
    }

}
