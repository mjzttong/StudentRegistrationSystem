import com.onb.registrationsystem.Role
import com.onb.registrationsystem.User
import com.onb.registrationsystem.UserRole

class BootStrap {
	def springSecurityService
	
    def init = { servletContext ->
    def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_STUDENT').save(flush: true)

      def testUser = new User(username: 'admin', enabled: true, password: 'admin')
      testUser.save(flush: true)

	  def studentUser = new User(username: 'student', enabled: true, password: 'student')
	  studentUser.save(flush: true)
      UserRole.create testUser, adminRole, true
	  UserRole.create studentUser, userRole, true
    }
    def destroy = {
    }
}
