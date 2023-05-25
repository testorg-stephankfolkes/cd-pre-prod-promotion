import java.io.File

def propertyContent = new File(propsDir, 'promotion-endpoint.txt').text

property 'promotion-endpoint', value: 'cd.sfolkeshsbcprod.flow-training.beescloud.com'
