import java.io.File

def propertyContent = new File(propsDir, 'copy_repo_dir.txt').text
copy_repo_dir = """$propertyContent"""
