import java.io.File

def propertyContent = new File(propsDir, 'gitScmDomain.txt').text
gitScmDomain = """$propertyContent"""
