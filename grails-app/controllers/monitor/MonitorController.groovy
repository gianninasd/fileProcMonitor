package monitor

class MonitorController {

    def index() {
        redirect(action: "list")
    }

    def list() {
        def grailsVersion = grailsApplication.config.getProperty('info.app.grailsVersion')
        def map = [grailsVersion: grailsVersion]

        render(view: "list", model: map)
    }
}
