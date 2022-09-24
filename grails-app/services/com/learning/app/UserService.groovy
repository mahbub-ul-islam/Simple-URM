package com.learning.app

import grails.gorm.services.Service

@Service(User)
interface UserService {

    User get(Serializable id)

    void delete(Serializable id)

    User save(User user)
}