metadata description = 'A \u{0022}Hello World\u{0022} sample Bicep registry module showing a nested module'
metadata owner = 'michael-crawford'

@sys.description('The name of someone to say hi to.')
param name string

@sys.description('The hello message.')
output greeting string = 'Hello from Bicep registry - Hi ${name}!'
