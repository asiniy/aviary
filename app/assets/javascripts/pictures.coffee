ready = ->
  if $('#aviary_image').length
    featherEditor = new (Aviary.Feather)(
      apiKey: '4ead817743744c709082cd898622853b'
      onSave: (imageID, newURL) ->
        $('form #picture_remote_image_url').val(newURL)
        $('form').submit()
      onError: (errorObj) ->
        console.log errorObj
      onLoad: () ->
        featherEditor.launch
          image: 'aviary_image',
          url: $('#aviary_image').attr('src')
    )

$(document).ready(ready)
$(document).on('page:load', ready)
