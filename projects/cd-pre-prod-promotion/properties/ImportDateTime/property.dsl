import java.io.File

def propertyContent = new File(propsDir, 'ImportDateTime.txt').text
ImportDateTime = """$propertyContent"""
