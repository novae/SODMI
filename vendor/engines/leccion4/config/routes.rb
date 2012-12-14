Leccion4::Engine.routes.draw do
  get "leccion/leccionIyC"

  get "leccion/estructurasSecuenciales"

  get "leccion/estructurasIterativas"

  get "leccion/estructurasSelectivas"

  get "leccion/introduccion"
  get "leccion/evaluacionInicial"
  
  root :to => "leccion#leccionIyC"
end
