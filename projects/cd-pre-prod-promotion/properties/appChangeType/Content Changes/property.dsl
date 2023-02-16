import java.io.File

def propertyContent = new File(propsDir, 'Content Changes.txt').text

property 'Content Changes', value: 'Content Changes'
