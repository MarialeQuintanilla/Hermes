<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatbot AGBC</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
    <div class="wrapper">
    <!-- <img src="img/agbc4.png" alt="Logo AGBC" class="logo"> -->
        <div class="title">ChatBot AGBC</div>
        <div class="form">
            <div class="bot-inbox inbox">
                <div class="icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="msg-header">
                    <p>
                        Hola, Bienvenido a la Agencia Boliviana de Correos ¿cómo puedo ayudarte?
                         <br>(selecciona la opcion que deseas escribe el numero que deseas)<br>
                        1. Tipos de servicios que ofrecemos<br>
                        2. A donde va a enviar?<br>
                        3. A donde no llegamos<br>
                        4. Mercaderias Prohibidas<br>
                        5. Como Rotular Un Envio Tradicional<br>
                        6. Peso Volumetrico del paquete<br>
                        7. Horarios de Atencion<br>
                        8. Precios de Casillas<br>
                        9. Volver Pagina Principal<br>
                        0. Volver al Menu Principal
                    </p>
                </div>
            </div>
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Escribe tu Opcion Numerica Aqui..." required>
                <button id="send-btn">Enviar</button>
            </div>
        </div>
    </div>

    <script>
       $(document).ready(function() {
    // Función para enviar el mensaje
    function enviarMensaje() {
        $value = $("#data").val();
        $msg = '<div class="user-inbox inbox"><div class="msg-header"><p>' + $value + '</p></div></div>';
        $(".form").append($msg);
        $("#data").val('');

        // Iniciar el código ajax
        $.ajax({
            url: 'message.php',
            type: 'POST',
            data: 'text=' + $value,
            success: function(result) {
                $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>' + result + '</p></div></div>';
                $(".form").append($replay);
                // Cuando el chat baja, la barra de desplazamiento llega automáticamente al final
                $(".form").scrollTop($(".form")[0].scrollHeight);
            }
        });
    }

    // Capturar el evento de teclado en el campo de entrada
    $("#data").on("keyup", function(event) {
        if (event.keyCode === 13) { // Verificar si se presionó la tecla Enter (código 13)
            enviarMensaje(); // Llamar a la función de enviar mensaje
        }
    });

    // Capturar el evento de clic en el botón de enviar
    $("#send-btn").on("click", function() {
        enviarMensaje(); // Llamar a la función de enviar mensaje
    });
});

    </script>

</body>

</html>
