window.onload = ->
    messages = []
    socket = io.connect("http://localhost:3000")
    field = document.getElementById("field")
    sendButton = document.getElementById("send")
    content = document.getElementById("content")
    socket.on "connect", (data) ->
        socket.emit 'getcontents'

    socket.on "getcontents", (data) ->
        socket.emit 'postcontents', content.innerHTML

    socket.on "postcontents", (data) ->
        content.innerHTML = data

    socket.on "message", (data) ->
        if data.message
            messages.push data.message
            html = ""
            i = 0

            while i < messages.length
                html += messages[i] + "<br />"
                i++
            content.innerHTML = html
        else
            console.log "There is a problem:", data

    sendButton.onclick = ->
        text = field.value
        socket.emit "send",
            message: text
