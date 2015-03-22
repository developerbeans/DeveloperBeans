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
            }else{
                flash.message = "Email or Password are not match."
                redirect(action: "index")
            }
        }
    }
    
    def forget(){
        if(!params.inputEmail){
            flash.message = "Please Fill out All Fields."
            redirect(action: "forgetPwd")
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
                    flash.message = "Your New Password has been sent to your email."
                    notificationService.sendEmail(params.inputEmail,content)
                    redirect(action: "forgetPwd")
                }else{
                    flash.message = "Please try after some time."
                    redirect(action: "forgetPwd")
                }
            }else{
                flash.message = "Email is not register with us."
                redirect(action: "forgetPwd")
            }
        }
    }
    
    def saveUser(){
        if(!params.inputEmail || !params.inputPassword || !params.displayName){
            flash.message = "Please Fill out All Fields."
            redirect(action: "register")
        }else{
            def userInstance = User.findByPrimaryEmail(params.inputEmail)
            if(userInstance){
                flash.message = "Email already register with other account."
                redirect(action: "register")
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
            userInstance.userId = params.displayName // Need to be done 
            userInstance.status = "ENABLE"
            userInstance.type = "FREE"
            userInstance.sourceIp = ipAddress
            userInstance.source = "WEBSITE"
            if (!userInstance.save()) {
                userInstance.errors.allErrors.each { println it }
                flash.message = "User Not Saved."
                redirect(action: "register")
            }else{
                def mailSubject = "Successfully Register.."
                def mailBody = "Dear User ${params.displayName}, Thanks for register with us."
                def content = [:]
                content.subject = mailSubject
                content.body = mailBody
                notificationService.sendEmail(params.inputEmail,content)
                redirect(controller:"main",action:"index")
            }
        }
    }
}
