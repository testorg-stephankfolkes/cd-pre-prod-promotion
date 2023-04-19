import java.io.File

def propertyContent = new File(propsDir, 'target_base_pr_branch.txt').text
target_base_pr_branch = """$propertyContent"""