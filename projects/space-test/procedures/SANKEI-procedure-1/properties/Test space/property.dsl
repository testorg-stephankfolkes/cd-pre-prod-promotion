import java.io.File

def propertyContent = new File(propsDir, 'Test space.txt').text

property 'Test space', value: 'value'
