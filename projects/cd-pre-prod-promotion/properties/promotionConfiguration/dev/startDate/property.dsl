import java.io.File

def propertyContent = new File(propsDir, 'startDate.txt').text
startDate = """$propertyContent"""
