import java.io.File

def propertyContent = new File(propsDir, 'committerEmail.txt').text
committerEmail = """$propertyContent"""
