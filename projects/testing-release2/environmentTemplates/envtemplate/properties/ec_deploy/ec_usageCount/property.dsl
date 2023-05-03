import java.io.File

def propertyContent = new File(propsDir, 'ec_usageCount.txt').text

property 'ec_usageCount', value: """$propertyContent""", {
  description = 'A count of how many times this Environment Template has been used to spin up Environments'
  suppressValueTracking = '1'
}
