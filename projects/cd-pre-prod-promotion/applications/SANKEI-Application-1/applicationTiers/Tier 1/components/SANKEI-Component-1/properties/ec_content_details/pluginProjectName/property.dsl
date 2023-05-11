import java.io.File

def propertyContent = new File(propsDir, 'pluginProjectName.txt').text

property 'pluginProjectName', value: 'EF-Utilities'
