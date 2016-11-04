qs = require 'qs'

module.exports =
  queryKey: false
  parseQueryString: (queryString) ->
    qs.parse queryString
  stringifyQuery: (query) ->
    # DON'T USE {skipNulls: true}
    qs.stringify query, {arrayFormat: 'brackets'}
