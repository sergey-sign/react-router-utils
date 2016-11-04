_ = require 'lodash'
types = require './types'

module.exports = (store) ->
  ->
    store.dispatch
      type: types.UPDATE_LOCATION
      state:
        params: _.cloneDeep @state.params
        location: _.cloneDeep @state.location
        routes: _.map @state.routes, (r) ->
          _.pick r, ['name', 'path']
