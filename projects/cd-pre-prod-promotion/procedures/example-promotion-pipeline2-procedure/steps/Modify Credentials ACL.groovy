/*
import com.electriccloud.client.groovy.ElectricFlow
ElectricFlow ef = new ElectricFlow()

def pN = '$[targetImportProjectName]'
pN = pN.replaceAll('/projects/', '')

// Get the credentials assigned to the project
def creds = ef.getCredentials(projectName: pN)

def groups = [];

def devops
def projectAdmin
def baseuser
def CorePlatformAdmin
def platformSupport

def projects = [];

def currentProject
def promotionProject


def instanceType = '$[/server/instanceType]'



// Depending on instanceType, populate the groups and projects that need to be added to each credential's access control list
switch(instanceType) {
			case "prod":

				devops 			  = [name: "Infodir-" + pN + "-cbcd-devops", read: "allow", modify: "allow", execute: "allow", changePermissions: "deny"]
				projectAdmin 	  = [name: "Infodir-" + pN + "-cbcd-projectAdmin", read: "allow", modify: "allow", execute: "allow", changePermissions: "deny"]
				CorePlatformAdmin = [name: "Infodir-cbcd-PROD-CorePlatformAdmin", read: "allow", modify: "allow", execute: "allow", changePermissions: "allow"]
				platformSupport   = [name: "Infodir-cbcd-PROD-platformSupport", read: "allow", modify: "allow", execute: "allow", changePermissions: ""]

                groups.push(devops)
                groups.push(projectAdmin)
                groups.push(CorePlatformAdmin)
                groups.push(platformSupport)

                currentProject	  = [name: "project: " + pN, read: "allow", modify: "", execute: "allow", changePermissions: "deny"]
                promotionProject   = [name: "project: CBCD_Platform_Core", read: "allow", modify: "allow", execute: "allow", changePermissions: "allow"]

                projects.push(currentProject)
                projects.push(promotionProject)

                break;
            case "preprod":

				devops 			  = [name: "Infodir-" + pN + "-cbcd-devops", read: "allow", modify: "allow", execute: "allow", changePermissions: "deny"]
				projectAdmin 	  = [name: "Infodir-" + pN + "-cbcd-projectAdmin", read: "allow", modify: "allow", execute: "allow", changePermissions: "deny"]
				baseuser 	 	  = [name: "Infodir-" + pN + "-cbcd-baseuser", read: "allow", modify: "allow", execute: "allow", changePermissions: "deny"]
				CorePlatformAdmin = [name: "Infodir-cbcd-prePROD-CorePlatformAdmin", read: "allow", modify: "allow", execute: "allow", changePermissions: "allow"]
				platformSupport   = [name: "Infodir-cbcd-prePROD-platformSupport", read: "allow", modify: "allow", execute: "allow", changePermissions: ""]

                groups.push(devops)
                groups.push(projectAdmin)
                groups.push(baseuser)
                groups.push(CorePlatformAdmin)
                groups.push(platformSupport)

                currentProject	  = [name: "project: " + pN, read: "allow", modify: "", execute: "allow", changePermissions: "deny"]
                promotionProject   = [name: "project: CBCD_Platform_Core", read: "allow", modify: "allow", execute: "allow", changePermissions: "allow"]

                projects.push(currentProject)
                projects.push(promotionProject)

				break;
			default:

				println("Instance Type is not set");
				break;
}

// For each credential, modify the ACLs adding/modifying groups and projects
creds.credential.each{
		c ->

        def credName = c.credentialName
        println credName + "\n"

        def accessResult = ef.getAccess(
					projectName: pN,
					credentialName: credName
                    )


        groups.each{
        	g ->

            println "\n	Groups: \n"
            if(accessResult.object.any {o-> o.aclEntry.any{acl-> acl.principalName == g.name} })
			{
            	println "		Modifying: " +  g.name + "\n"
				def result = ef.modifyAclEntry(
						principalName:  g.name,
						principalType: 'group',
						readPrivilege: g.read,
						modifyPrivilege: g.modify,
						executePrivilege: g.execute,
						changePermissionsPrivilege: g.changePermissions,
						projectName: pN,
						credentialName: credName
						)
			}
			else
			{
            	println "		Creating: " + g.name + "\n"
				def result = ef.createAclEntry(
						principalName: g.name,
						principalType: 'group',
						readPrivilege: g.read,
						modifyPrivilege: g.modify,
						executePrivilege: g.execute,
						changePermissionsPrivilege: g.changePermissions,
						projectName: pN,
						credentialName: credName
						)
			}
		}

        projects.each{
        	p ->

            println "\n	projects: \n"
            if(accessResult.object.any {o-> o.aclEntry.any{acl-> acl.principalName == p.name} })
			{
            	println "		Modifying: " + p.name + "\n"
            	def result = ef.modifyAclEntry(
					principalName: p.name,
					principalType: 'user',
					readPrivilege: p.read,
					modifyPrivilege: p.modify,
					executePrivilege: p.execute,
					changePermissionsPrivilege: p.changePermissions,
					projectName: pN,
					credentialName: credName
					)
            }
            else
            {
            	println "		Creating: " + p.name + "\n"
            	def result = ef.createAclEntry(
					principalName: p.name,
					principalType: 'user',
					readPrivilege: p.read,
					modifyPrivilege: p.modify,
					executePrivilege: p.execute,
					changePermissionsPrivilege: p.changePermissions,
					projectName: pN,
					credentialName: credName
					)
            }
		}

        println "\n\n	Deleting: \n"
		accessResult.object.each{
					obj ->
                    obj.aclEntry.each{
						acl ->


                            if(!(projects.any { project -> project.name == acl.principalName  } ||
                                 groups.any { group -> group.name == acl.principalName  } ))
                            {
                            	println "		Deleting ACL: " + acl.principalName + "\n"
                            	def deleteResult = ef.deleteAclEntry(principalName: acl.principalName, principalType: acl.principalType, projectName: pN, credentialName: credName)

							}

                    }
        }
}
*/