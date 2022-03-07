Rails.application.routes.draw do
  #root 'application#hello' # En esta parte referenciamos el root, dependiendo de que controlador queramos solo pondremos el nombre
                     # Rails lo detecta solito al parecer
                     #Para especificar un metodo dentro del controller se le pone un # como esta puesto ahorita

  root 'pages#home'
  get 'about', to: 'pages#about'
end
