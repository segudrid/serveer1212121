Rails.application.routes.draw do
 root to: 'pages#home'
 get 'about', to: 'pages#about'
 get 'extra', to: 'pages#extra'
 get 'contacto', to:'pages#contacto'
end
