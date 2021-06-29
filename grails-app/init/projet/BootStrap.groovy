package projet

class BootStrap {

    def init = { servletContext ->
            def roleAdmin = new Role(authority: 'ROLE_ADMIN').save()
            def roleMod = new Role(authority: 'ROLE_MOD').save()
            def roleClient = new Role(authority: 'ROLE_CLIENT').save()


            def userAdminInstance = new User(username: 'admin', password: 'admin').save()


            def userClient = new User(username: 'sonia', password: 'me').save()


            UserRole.create(userAdminInstance, roleAdmin, true)
            UserRole.create(userClient, roleClient, true)
            def destroy = {
            }
        }
    }
