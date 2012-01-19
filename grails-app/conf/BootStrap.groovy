import bank.*

class BootStrap {

    def springSecurityService

    def init = { servletContext ->
        createAuth()
    }
    def destroy = {
    }

    def void createAuth() {
        def userRole
        def adminRole
        def adminUser 

        if (!Role.findByAuthority('ROLE_USER')) {
            userRole = new Role(authority: 'ROLE_USER').save()
        }
        if (!Role.findByAuthority('ROLE_ADMIN')) {
            adminRole = new Role(authority: 'ROLE_ADMIN').save()
        }

        if (!User.findByUsername('admin')) {
            adminUser = new User( username: 'admin', password: 'admin', enabled: true).save()
        }

        if (!adminUser.authorities.contains(adminRole)) {
            UserRole.create adminUser, adminRole
        }
        if (!adminUser.authorities.contains(userRole)) {
            UserRole.create adminUser, userRole
        }

        def addRequestMap = { url, role ->
            new Requestmap(url: url, configAttribute: 'ROLE_' + role.toUpperCase()).save()
        }

        addRequestMap('/', 'user')
        addRequestMap('/account/*', 'user')
        addRequestMap('/bank', 'user')
        addRequestMap('/bank/*', 'user')
        addRequestMap('/person', 'user')
        addRequestMap('/user/*', 'admin')
    }
}
