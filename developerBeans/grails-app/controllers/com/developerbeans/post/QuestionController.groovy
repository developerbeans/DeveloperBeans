package com.developerbeans.post
import org.codehaus.groovy.grails.commons.ConfigurationHolder as confHolder
class QuestionController {
    
    def baseURL = confHolder.config.app.baseURL
    
    def index() { 
        def posts = Post.list()
        [posts:posts]
    }
    def detail() { 
        def post = Post.findById(params.id)
        def comments = post.getPostComments()
        [post:post,comments:comments]
    }
    
    def reply(){
        if(params.id){
            def commentInstance = new Comments()
            commentInstance.post = Post.get(params.id)
            commentInstance.userId = "478lop"      //session["userId"]
            commentInstance.description = params.comment
        
            if(commentInstance.save(flush:true)){
                println "comment aded commentlist"
                flash.message = "Comment added successfully."
                def uri = baseURL+"/question/detail/$params.id"+"#commentlist"
                println uri
                redirect(uri:uri)
            }else{
                flash.message = "Comment canont be added at this momment.We are sorry for the inconvenience."
                redirect(action:"detail",id:params.id)
            }
        }else{
            flash.message = "Holy crap! Something terrible happened."
            redirect(action:"detail",id:params.id)
        }
       
        
    }
}
