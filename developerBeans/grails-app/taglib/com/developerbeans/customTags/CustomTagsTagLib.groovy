package com.developerbeans.customTags
import com.developerbeans.user.User

class CustomTagsTagLib {
    
    def userImg = { attrs, body ->
        def userId = attrs.id
        def user = User.findByUserId(userId)
        def imgTag = '<img alt="" src="../../images/avatar.png">'
        if(user.profile){
            if(user.profile.profilePic){
                imgTag = '<img alt="" src="'+user.profile.profilePic+'">'  
            }
        }
        out << imgTag
    }

}
