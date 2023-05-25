import java.io.File

def propertyContent = new File(propsDir, 'cloneInitialBranch.txt').text
cloneInitialBranch = """$propertyContent"""