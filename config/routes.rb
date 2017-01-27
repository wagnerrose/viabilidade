Rails.application.routes.draw do
  resources :vt
  resources :pop
  resources :justificativas
  resources :localidades
  resources :servicos
  resources :uf
  resources :regionais
  resources :empresas
  resources :analistas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'vt#index'
end
