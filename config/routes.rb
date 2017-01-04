Rails.application.routes.draw do
  
  get '/paginas', to: 'static_pages#pagina'

  get '/contact', to: 'messages#new'
  post '/contact', to: 'messages#create'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
