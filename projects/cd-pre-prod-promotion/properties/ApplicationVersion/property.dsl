import java.io.File

def propertyContent = new File(propsDir, 'ApplicationVersion.txt').text
ApplicationVersion = """$propertyContent"""