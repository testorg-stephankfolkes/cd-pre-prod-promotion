import java.io.File

def propertyContent = new File(propsDir, 'Version.txt').text

property 'Version', value: '1.5'
