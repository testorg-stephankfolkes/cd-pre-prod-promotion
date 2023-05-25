import java.io.File

def propertyContent = new File(propsDir, 'pipeline-promotion-project.txt').text

property 'pipeline-promotion-project', value: 'cd-prod-promotion'
