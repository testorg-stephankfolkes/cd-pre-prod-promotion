import java.io.File

def propertyContent = new File(propsDir, 'meh.txt').text
meh = """$propertyContent"""