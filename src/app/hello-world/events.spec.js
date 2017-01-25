/* eslint-env mocha */

const chai = require('chai')
const chaiAsPromised = require('chai-as-promised')
const should = chai.should()
const Promise = require('bluebird')

const HelloWorld = require('./')

chai.use(chaiAsPromised)
chai.config.includeStack = false

describe('Hello World', function () {
  describe('Basic unit tests', function () {
    it('should return hello world', function (done) {
      const helloWorld = new HelloWorld()
      helloWorld.sayHello().should.be.fulfilled.and.notify(done)
    })
  })
})
