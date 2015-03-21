package com.developerbeans.user

class Follower {
    String userID,followerID
    Date followedOn = new Date()
   

    static constraints = {
        userID(blank:false)
        followerID(blank:false)
    }
}
