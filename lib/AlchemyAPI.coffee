'use strict'

got           = require 'got'
Whoops        = require 'whoops'
jsonFuture    = require 'json-future'
pkg           = require './../package.json'
existsDefault = require 'existential-default'
DEFAULT       = require './AlchemyAPI.DEFAULT'
Credentials   = require './AlchemyAPI.Credentials'

handleResponse = (cb) ->
  (err, body, res) ->
    return cb err, body, res if err

    jsonFuture.parseAsync body, (err, bodyParsed) ->
      return cb err, body, res if err

      err = undefined

      if bodyParsed.status.toLowerCase() is 'error'
        err = Whoops 'ALCHEMYAPIError', bodyParsed.statusInfo or 'Something was wrong'

      cb err, bodyParsed, res

createRequest = (url, apiKey) ->
  (params, cb) ->
    params.apikey = apiKey
    params.outputMode = existsDefault params.outputMode, DEFAULT.OUTPUTMODE

    options =
      body: params
      headers:
        'user-agent': pkg.homepage

     got.post url, options, handleResponse cb

createRequests = (endpoint, credentials) ->
  for type, path of endpoint
    url = "#{credentials.url}/#{type}/#{path}"
    endpoint[type] = createRequest url, credentials.key
  endpoint

module.exports = (options = {}) ->
    credentials = Credentials options
    endpoints   = DEFAULT.ENDPOINTS()
    methods     = {}

    for endpointName, endpointMethods of endpoints
      methods[endpointName] = createRequests endpointMethods, credentials
    methods
