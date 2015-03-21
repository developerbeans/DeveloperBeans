package com.developerbeans.user.project

class Tag {
    
    String name, tagVersion, category

    static constraints = {
        name(unique:['tagVersion'],blank:false)
        version(nullable:true)
        category(nullable:true)
    }
}
