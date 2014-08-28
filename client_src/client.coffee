$(document).ready () =>
    sharejsDoc = window.location.pathname[1..window.location.pathname.length]
    document.title = "Webstrate - " + sharejsDoc
    if sharejsDoc.length == 0
        throw "Error: No document id provided"
    
    openDoc sharejsDoc, $('body').get(0), () ->
        event = new CustomEvent "loaded", { "detail": "The share.js document has finished loading" }
        document.dispatchEvent event