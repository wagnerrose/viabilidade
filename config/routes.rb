Rails.application.routes.draw do

  get 'backoffice', to: 'backoffice/dashboard#index'
  get 'webmin', to: 'backoffice/dashboard#index'
  namespace :backoffice do
    get 'dashboard',to: 'dashboard#index'
    namespace :tabelas do
      resources :analistas
      resources :empresas
      resources :equipamentos
      resources :estacoes
      resources :justificativas
      resources :localidades
      resources :respostas
      resources :regionais
      resources :servicos
      resources :uf
    end
  end

  namespace :site do
    get 'home', to: 'home#index'
  end

  devise_for :usuarios
  devise_for :admin

  root 'site/home#index'

  resources :solicitacoes
end
