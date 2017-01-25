'use strict'

const HelloWorld = require('./')

module.exports.endpoint = (event, context, callback) => {
  const helloWorld = new HelloWorld()
  helloWorld.sayHello().then(function (result) {
    callback(null, {
      statusCode: 200,
      body: JSON.stringify(result)
    })
  }).catch(function (error) {
    callback(null, {
      statusCode: 500,
      body: JSON.stringify(error)
    })
  })
}
