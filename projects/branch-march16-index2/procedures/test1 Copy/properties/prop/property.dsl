import java.io.File

def propertyContent = new File(propsDir, 'prop.txt').text
prop = """$propertyContent"""
