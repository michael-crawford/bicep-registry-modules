@description('The name of someone to say hi to.')
param name string

module helloWorld 'modules/hello-world.bicep' = {
  name: 'helloWorld-${name}'
  params: {
    name: name
  }
}

@description('The hello message.')
output greeting string = helloWorld.outputs.greeting
