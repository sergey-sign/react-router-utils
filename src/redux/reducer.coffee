_ = require 'lodash'
types = require './types'

initialState =
  params: {}
  location:
    query: {}
  routes: []
  
module.exports = (state = initialState, action) ->
  switch action.type
    when types.UPDATE_LOCATION
      _.assign {}, state, action.state
    else
      state
