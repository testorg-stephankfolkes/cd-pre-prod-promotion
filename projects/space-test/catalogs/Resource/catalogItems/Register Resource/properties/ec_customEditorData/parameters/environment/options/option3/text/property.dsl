import java.io.File

def propertyContent = new File(propsDir, 'text.txt').text

property 'text', value: 'UAT'
