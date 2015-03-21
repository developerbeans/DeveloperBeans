package com.developerbeans.user.project
import com.developerbeans.user.User

class Rating {
    String status, userId
    BigInteger value
    Date ratedOn = new Date()
   
     
    static belongsTo = [project: Project]

    static constraints = {
        status(nullable:true)
        value(blank:false)
        userId(blank:false)
    }
}
