import java.io.File

def propertyContent = new File(propsDir, 'Infrastructure Changes.txt').text

property 'Infrastructure Changes', value: 'Infrastructure Changes'
