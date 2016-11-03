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
      newState = 
        params: _.cloneDeep action.state.params
        location: _.cloneDeep action.state.location
        routes: _.map action.state.routes, (r) ->
          _.pick r, ['name', 'path']
      Object.assign {}, state, newState
    else
      state
