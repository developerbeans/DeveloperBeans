package com.developerbeans.user

class Profile {
    
    String profilePic, fbUrl, twitterUrl, linkedInUrl, blogUrl, otherUrl, aboutMe,
    city, country, phone, address, orgName
    Date updatedOn = new Date()
    BigInteger views = 0
    
    static belongsTo = [user: User]
    
    static mapping = {
        address type:'text'
        aboutMe type:'text'
    }
    static constraints = {
        profilePic(nullable:true)
        fbUrl(nullable:true,url:true)
        twitterUrl(nullable:true,url:true)
        linkedInUrl(nullable:true,url:true)
        blogUrl(nullable:true,url:true)
        otherUrl(nullable:true)
        aboutMe(nullable:true)
        city(nullable:true)
        country(nullable:true)
        phone(nullable:true)
        address(nullable:true)
        orgName(nullable:true)
    }
}
