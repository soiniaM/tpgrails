package projet

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/api/saleads"(resources: "SaleAd")
        "/api/users"(resources: "User")
        "/"(view:"/index")

        "500"(view:'/error')
        "404"(view:'/notFound')


    }
}
