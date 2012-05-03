import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils;



class WelcomeController {

	def springSecurityService
	
    def index() { 
		if (springSecurityService.isLoggedIn()) {
			if(SpringSecurityUtils.ifAllGranted("ROLE_STUDENT")){
				render view:"student"
			}
		}
	}
}
