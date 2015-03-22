package com.developerbeans.user
import com.developerbeans.user.project.Project

import com.developerbeans.post.Post

class User {
    
    String userId, primaryEmail, password, displayName, source, sourceIp, secondaryEmail, status, type
    Date createdOn = new Date(), lastSeen = new Date()
    
    static hasOne = [profile: Profile]
    static hasMany = [projects: Project,posts:Post]
    
//    def beforeInsert() {
//        this.userId = new Date().getTime()
//    }
    
    static constraints = {
        primaryEmail(unique:true,email:true,blank:false)
        userId(unique:true,blank:false)
        secondaryEmail(email:true,nullable:true)
        profile(nullable:true)
        source(nullable:true)
        sourceIp(nullable:true)
        status(nullable:true)
    }
}
