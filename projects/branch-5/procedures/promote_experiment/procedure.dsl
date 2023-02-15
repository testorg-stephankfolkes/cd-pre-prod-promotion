
procedure 'promote_experiment', {

  formalParameter 'srcProject', {
    label = 'Source Project'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()


def conf = getProjects()
conf.each{
  if (it.projectName.endsWith("experimental")) {
    
     options.add( /*value*/  it.projectName, /*displayString*/ it.projectName)
  }
}


return options'''
    orderIndex = '1'
    required = '1'
    type = 'select'
  }

  formalParameter 'destProject', {
    dependsOn = 'srcProject'
    label = 'Destination Project'
    optionsDsl = '''
import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()



def selectedValue = args.parameters[\'srcProject\']


if (selectedValue) {
  def targetExist = false
  selectedValue = selectedValue.minus("/projects/")
  def expected_project = selectedValue.minus("_experimental")
  def conf = getProjects()
  conf.each{
    
    if (it.projectName == expected_project) {
    
      options.add( /*value*/ \'/projects/\' + it.projectName, /*displayString*/ it.projectName)
      targetExist = true
    }
  }
  if (targetExist == false) {
  	options.add( /*value*/ \'create_target_\' + expected_project , /*displayString*/ \'Project doesnt exist, it will be created !\')
  }
                       
 
}

return options'''
    orderIndex = '2'
    required = '1'
    type = 'select'
  }

  formalParameter 'resource_or_pool_name', {
    description = 'Resource chosen is expected to have Git CLI installed.'
    label = 'Resource or Pool Name'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }
}
