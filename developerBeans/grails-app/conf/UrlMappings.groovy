class UrlMappings {

    static mappings = {
		"/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }

		"/"(controller:"main",action:"index")
		"/login"(controller:"main",action:"login")
		"/register"(controller:"main",action:"register")
		"/forget-pwd"(controller:"main",action:"forgetPwd")
		"500"(view:'/error')
    }
}
