types = require './types'
module.exports = (store) ->
  ->
    store.dispatch
      type: types.UPDATE_LOCATION
      state: @state
