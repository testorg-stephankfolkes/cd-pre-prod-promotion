
acl {
  inheriting = '0'

  aclEntry 'group', principalName: 'Infodir-cbcd-PROD-CorePlatformAdmin', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'group', principalName: 'Infodir-cbcd-PROD-platformSupport', {
    changePermissionsPrivilege = 'inherit'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'group', principalName: 'Infodir-cd-pre-prod-promotion-cbcd-devops', {
    changePermissionsPrivilege = 'deny'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'group', principalName: 'Infodir-cd-pre-prod-promotion-cbcd-projectAdmin', {
    changePermissionsPrivilege = 'deny'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'user', principalName: 'project: CBCD_Platform_Core', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'user', principalName: 'project: cd-pre-prod-promotion', {
    changePermissionsPrivilege = 'deny'
    executePrivilege = 'allow'
    modifyPrivilege = 'inherit'
    readPrivilege = 'allow'
  }
}
