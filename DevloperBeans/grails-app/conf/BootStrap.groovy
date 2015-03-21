import com.developerbeans.user.User
import com.developerbeans.user.project.Tag
class BootStrap {

    def init = { servletContext ->
        
        def tag = Tag.findByName('Grails')?: new Tag(name: "Grails", tagVersion: "1.3.3", category:"Framework").save(failOnError: true)
        def tag1 = Tag.findByName('MySql')?: new Tag(name: "MySql", tagVersion: "5.3.1", category:"Database").save(failOnError: true)
        def tag2 = Tag.findByName('Java')?: new Tag(name: "Java", tagVersion: "7.0", category:"Language").save(failOnError: true)
        def tag3 = Tag.findByName('PHP')?: new Tag(name: "PHP", tagVersion: "5.1", category:"Language").save(failOnError: true)
        def tag4 = Tag.findByName('JavaScript')?: new Tag(name: "JavaScript", tagVersion: "1.8", category:"Language").save(failOnError: true)
        def tag5 = Tag.findByName('AngularJS')?: new Tag(name: "AngularJS", tagVersion: "1.3.1", category:"Framework").save(failOnError: true)
    }
    def destroy = {
    }
}
