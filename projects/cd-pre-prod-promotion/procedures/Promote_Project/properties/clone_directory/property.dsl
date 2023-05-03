import java.io.File

def propertyContent = new File(propsDir, 'clone_directory.txt').text
clone_directory = """$propertyContent"""