package com.developerbeans.util

class NotificationService {

    def mailService
    
    def sendEmail(user,params) {
        def mailSubject = params.subject
        def mailBody = params.body
        mailService.sendMail {
            to user
            subject mailSubject
            body mailBody
        }
    }
}
