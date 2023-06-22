import java.io.File

def propertyContent = new File(propsDir, ' copy_repo_dir .txt').text

property ' copy_repo_dir ', value: '''dump
'''
