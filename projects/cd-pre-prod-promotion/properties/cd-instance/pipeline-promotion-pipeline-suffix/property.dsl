import java.io.File

def propertyContent = new File(propsDir, 'pipeline-promotion-pipeline-suffix.txt').text

property 'pipeline-promotion-pipeline-suffix', value: '-promotion-pipeline'
