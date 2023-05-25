import java.io.File

def propertyContent = new File(propsDir, 'committerName.txt').text
committerName = """$propertyContent"""