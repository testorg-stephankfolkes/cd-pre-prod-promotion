import java.io.File

def propertyContent = new File(propsDir, 'timeZone.txt').text

property 'timeZone', value: 'Etc/UTC'
