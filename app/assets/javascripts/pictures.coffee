ready = ->
  if $('#aviary_image').length
    featherEditor = new (Aviary.Feather)(
      apiKey: '4ead817743744c709082cd898622853b'
      onSave: (imageID, newURL) ->
        img = document.getElementById(imageID)
        img.src = newURL
      onError: (errorObj) ->
        console.log errorObj
      onLoad: () ->
        featherEditor.launch
          image: 'aviary_image',
          url: $('#aviary_image').attr('src')
    )

$(document).ready(ready)
$(document).on('page:load', ready)
