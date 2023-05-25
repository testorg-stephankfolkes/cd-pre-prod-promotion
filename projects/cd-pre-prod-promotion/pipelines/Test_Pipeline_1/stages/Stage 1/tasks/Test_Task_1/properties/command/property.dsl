import java.io.File

def propertyContent = new File(propsDir, 'command.txt').text

property 'command', value: 'ls'
