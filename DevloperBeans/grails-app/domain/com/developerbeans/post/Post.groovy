package com.developerbeans.post

import com.developerbeans.user.User
import com.developerbeans.user.project.Tag
class Post {
    
    static final PUBLIC = "PUBLIC"      //  posts for all
    static final PRIVATE = "PRIVATE"    // posts for followers
    static final DRAFT = "DRAFT"        // posts for me, Not published
    
    String category, title, content, tags, status
    Date createdOn = new Date()
    Boolean adminStatus = false
    BigInteger views = 0
    static hasMany = [postComments:Comments]
    static belongsTo = [user: User]
   
    static constraints = {
        title(blank:false)
        category(blank:false)
        content(blank:false)
         status(nullable:true)
    }
        
}

