package com.developerbeans.website
import com.developerbeans.post.Post
import com.developerbeans.user.project.Project
import com.developerbeans.user.User

class MainController {

    def index() { 
        def posts = Post.list()
        def projects = Project.list()
        println posts
        println projects
        [posts:posts,projects:projects]
    }
    def developers(){
        def developers = User.list()
        println developers
        [developers:developers]
    }
    def login() { }
    def register() { }
    def forgetPwd() { }
    
}
