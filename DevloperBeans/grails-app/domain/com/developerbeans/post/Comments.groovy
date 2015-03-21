package com.developerbeans.post

class Comments {
    // Post Comment
    String description, userId, status
    Date postedOn = new Date()
    BigInteger spammer = 0
    
    static belongsTo = [post: Post]
    
    static mapping = {
        description type:'text'
    }
    
    static constraints = {
        description(blank:false)
        post(blank:false)
        userId(blank:false)
         status(nullable:true)
        
    }
}
