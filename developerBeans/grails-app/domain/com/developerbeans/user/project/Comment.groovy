package com.developerbeans.user.project
import com.developerbeans.user.User

class Comment {
    // Project Comment
    String description, userId, status
    Date postedOn = new Date()
    BigInteger spammer = 0
  
    
    static belongsTo = [project: Project]
    
    static mapping = {
        description type:'text'
    }

    static constraints = {
        description(blank:false)
        project(blank:false)
        userId(blank:false)
         status(nullable:true)
    }
}
