package com.developerbeans.user.project

class Resource {
    String type, url, status
    
    
    static belongsTo = [project: Project]

    static constraints = {
        type(blank:false)
        url(blank:false)
        status(nullable:true)
    }
}
