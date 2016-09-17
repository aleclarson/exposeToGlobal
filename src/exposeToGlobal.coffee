
module.exports = (key, currentValue) ->

  # This protects against module duplication by NPM.
  return if Object.hasOwnProperty.call global, key

  stack = []

  Object.defineProperty global, key,
    configurable: no
    enumerable: yes
    get: -> currentValue

  get: ->
    currentValue

  set: (newValue) ->
    currentValue = newValue
    return

  push: (newValue) ->
    stack.push currentValue
    currentValue = newValue
    return

  pop: ->
    currentValue = stack.pop()
    return
