# Nested Hello World

A "Hello World" sample Bicep registry module showing a nested module

## Description

This is a simple example of a module, to be used for training and a starting point for additional modules. This is based
on the hello-world sample, but with an additional level of modules.

## Parameters

| Name   | Type     | Required | Description                       |
| :----- | :------: | :------: | :-------------------------------- |
| `name` | `string` | Yes      | The name of someone to say hi to. |

## Outputs

| Name       | Type     | Description        |
| :--------- | :------: | :----------------- |
| `greeting` | `string` | The hello message. |

## Examples

### Using the nested hello world module

```bicep
module nestedHelloWorld 'br/private:samples/nested-hello-world:0.0.1' = {
  name: 'nestedHelloWorld'
  params: {
    name: 'Bicep developers'
  }
}

output greeting string = nestedHelloWorld.outputs.greeting
```