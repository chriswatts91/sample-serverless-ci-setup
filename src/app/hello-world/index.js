'use strict'

class HelloWorld {

  /**
   * Say Hello
   *
   * @returns {promise} Promise of hello-world
   */
  sayHello () {
    return new Promise(function (resolve, reject) {
      resolve('Yo it works!')
    })
  }
}

module.exports = HelloWorld
