qs = require 'qs'

module.exports =
  parseQueryString: (queryString) ->
    qs.parse queryString
  stringifyQuery: (query) ->
    # DON'T USE {skipNulls: true}
    qs.stringify query, {arrayFormat: 'brackets'}
