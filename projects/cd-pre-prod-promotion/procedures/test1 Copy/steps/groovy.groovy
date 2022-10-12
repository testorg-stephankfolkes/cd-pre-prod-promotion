import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*

ElectricFlow ef = new ElectricFlow()


def resultResources = ef.getResources().resource

println(resultResources)

resultResources.each{
  def resourceName = it.resourceName
  println(resourceName)
}
