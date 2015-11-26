'use strict'

###*
 * Default modules.
 * Settings to use across the library when the user doesn't provide and overwrite.
###
module.exports =

  URI                       : 'gateway-a.watsonplatform.net'
  POSTFIX                   : '/calls'
  SECURE                    : true

  OUTPUTMODE                : 'json'

  SECURE_MODES:
    true                    : 'https'
    false                   : 'http'

  ENDPOINTS: ->
    return {
      taxonomy :
        url    : 'URLGetRankedTaxonomy'
        text   : 'TextGetRankedTaxonomy'
        html   : 'HTMLGetRankedTaxonomy'
    }
