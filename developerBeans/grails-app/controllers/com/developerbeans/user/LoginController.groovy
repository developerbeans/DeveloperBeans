package com.developerbeans.user
import org.apache.commons.lang.RandomStringUtils

class LoginController {

    def notificationService
    def index() {
    }
    def register() { 
        //flash.message = "Please Fill out All Fields."
        
    }
    def forgetPwd() { }
    
    def auth(){
        if(!params.inputEmail || !params.inputPassword){
            flash.message = "Please Fill out All Fields."
            redirect(action: "index")
        }else{
            def userInstance = User.findByPrimaryEmailAndPassword(params.inputEmail,params.inputPassword.encodeAsSHA256())
            if(userInstance){
                redirect(controller:"main",action:"index")
                session["user"] = userInstance.displayName
            }else{
                flash.message = "Email or Password are not match."
                redirect(action: "index")
            }
        }
    }
    
    def forget(){
        if(!params.inputEmail){
            render(status: 400, text: "Please Fill out All Fields.")
            return
        }else{
            def userInstance = User.findByPrimaryEmail(params.inputEmail)
            if(userInstance){
                String charset = (('A'..'Z') + ('0'..'9')).join()
                Integer length = 7
                String defaultPassword = RandomStringUtils.random(length, charset.toCharArray())
                def mailSubject = "Password Reset"
                def mailBody = "Dear User ${userInstance.displayName}, Your New Password is ${defaultPassword}"
                def content = [:]
                content.subject = mailSubject
                content.body = mailBody
                userInstance.password = defaultPassword.encodeAsSHA256()
                if (userInstance.save()) {
                    notificationService.sendEmail(params.inputEmail,content)
                    render(status: 200, text: "Your New Password has been sent to your email.")
                    return 
                }else{
                    render(status: 500, text: "Please try after some time.")
                    return 
                }
            }else{
                render(status: 404, text: "Email is not register with us.")
                return 
            }
        }
    }
    
    def saveUser(){
        if(!params.inputEmail || !params.inputPassword || !params.displayName){
            render(status: 400, text: "Please Fill out All Fields.")
            return
        }else{
            def userInstance = User.findByPrimaryEmail(params.inputEmail)
            if(userInstance){
                render(status: 400, text: "Email already register with other account.")
                return
            }
            String ipAddress =  request.getHeader("X-Forwarded-For");
            if (ipAddress == null || ipAddress.equals("")) {
                ipAddress = request.getRemoteAddr();
            }
            userInstance = new User()
            userInstance.primaryEmail = params.inputEmail
            userInstance.password = params.inputPassword.encodeAsSHA256()
            userInstance.displayName = params.displayName
            userInstance.userId = new Date().getTime() // Need to be done 
            userInstance.status = "ENABLE"
            userInstance.type = "FREE"
            userInstance.sourceIp = ipAddress
            userInstance.source = "WEBSITE"
            if (!userInstance.save()) {
                userInstance.errors.allErrors.each { println it }
                render(status: 400, text: "User Not Saved.")
                return
            }else{
                def mailSubject = "Successfully Register.."
                def mailBody = "Dear User ${params.displayName}, Thanks for register with us."
                def content = [:]
                content.subject = mailSubject
                content.body = mailBody
                notificationService.sendEmail(params.inputEmail,content)
                session["user"] = userInstance.displayName
                redirect(controller:"main",action:"index")
            }
        }
    }
    
    def logout(){
        session.invalidate()
        redirect(controller:"main",action:"index")
    }
}
