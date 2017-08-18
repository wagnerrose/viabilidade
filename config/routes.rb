Rails.application.routes.draw do
  namespace :site do
    get 'home', to: 'home#index'
  end

  namespace :backoffice do
    get 'dashboard',to: 'dashboard#index'
  end

  devise_for :usuarios
  devise_for :admin

  root 'site/home#index'

  resources :equipamentos
  resources :estacoes
  resources :respostas
  resources :solicitacoes
  resources :justificativas
  resources :localidades
  resources :servicos
  resources :uf
  resources :regionais
  resources :empresas
  resources :analistas


end
