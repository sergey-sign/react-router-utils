React = require 'react'
_ = require 'lodash'

module.exports = (Component, connect, reducerPath = 'router') ->
  isEqual = (state, props, type) ->
    _.isEqual _.get(state, [reducerPath, type].join('.')), props[type]

  relay = React.createClass
    shouldComponentUpdate: (props) ->
      props.historyInSync
    render: ->
      React.createElement Component, @props

  mapState = (state, props) ->
    locationEqual = isEqual(state, props, 'location')
    paramsEqual = isEqual(state, props, 'params')
    historyInSync: locationEqual && paramsEqual

  connect(mapState)(relay)
