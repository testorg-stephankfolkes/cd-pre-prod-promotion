import java.io.File

def propertyContent = new File(propsDir, 'ec_usageCount.txt').text
ec_usageCount = """$propertyContent"""
