import java.io.File

def propertyContent = new File(propsDir, 'skipScheduling.txt').text
skipScheduling = """$propertyContent"""