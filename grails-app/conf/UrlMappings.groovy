class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: "login", action:"/auth")
		"500"(view:'/error')
		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")

	}
}
