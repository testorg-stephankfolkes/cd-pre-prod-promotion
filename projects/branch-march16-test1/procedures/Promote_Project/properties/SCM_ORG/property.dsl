import java.io.File

def propertyContent = new File(propsDir, 'SCM_ORG.txt').text
SCM_ORG = """$propertyContent"""
