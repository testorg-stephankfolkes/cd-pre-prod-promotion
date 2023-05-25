import java.io.File

def propertyContent = new File(propsDir, 'startTime.txt').text

property 'startTime', value: '12:00'
