package monitor

class HelloController {

    def index() {
        def grailsVersion = grailsApplication.config.getProperty('info.app.grailsVersion')

        render "Hello world >> " + grailsVersion
    }
}
