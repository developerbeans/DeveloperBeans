package com.developerbeans.user.project
import com.developerbeans.user.User

class Project {
    
    String name, shortDescription, longDescription, status, downloadUrl, tags
    BigInteger downloads = 0, views = 0
    Date createdOn = new Date()
    Long size
    Boolean adminStatus = false
    
    static hasMany = [resources:Resource]
    
    static mapping = {
        tags type:'text'
        longDescription type:'text'
    }
   
    static belongsTo = [user: User]

    static constraints = {
        downloadUrl(url:true,blank:false)
        name(blank:false)
        tags(blank:false)
        shortDescription(blank:false)
        size(nullable:true)
        longDescription(nullable:true)
        status(nullable:true)
    }
}
