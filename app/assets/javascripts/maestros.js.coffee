$(document).ready ->
  #Validacion de usuario tipo Profesor
  #Acceso a administracion de usuarios
  $(".linkClass").click ->
    texto = prompt("Para acceder necesitas introducir la contraseña: ")
    until texto is "prosodmae01"
      alert "Contreaseña  Incorrecta incorrecta"
      texto = prompt("Introdusca la contraseña: ")