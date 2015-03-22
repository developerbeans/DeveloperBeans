class UrlMappings {

    static mappings = {
		"/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }

		"/"(controller:"main",action:"index")
		"/login"(controller:"login",action:"index")
		"/register"(controller:"login",action:"register")
		"/forget-pwd"(controller:"login",action:"forgetPwd")
        "/developers"(controller:"main",action:"developers")
		"500"(view:'/error')
    }
}
