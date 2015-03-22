package com.developerbeans.website
import com.developerbeans.post.Post
import com.developerbeans.user.User

class MainController {

    def index() { 
        def posts = Post.list()
        println posts
        [posts:posts]
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
