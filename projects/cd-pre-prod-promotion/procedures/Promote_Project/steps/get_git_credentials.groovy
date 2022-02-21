import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*

ElectricFlow ef = new ElectricFlow()


def String credPath = ef.getPluginConfiguration(projectName: '$[shortProjectName]', pluginConfigurationName: '$[ec-git_configuration]').pluginConfiguration.credentialMappings.parameterDetail.parameterValue

credPath = credPath.minus("]").minus("[").trim()

ef.setProperty( propertyName: '/myJob/credPath', value: credPath)