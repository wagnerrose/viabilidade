Rails.application.routes.draw do
  get 'backoffice', to: 'backoffice/dashboard#index'
  get 'webmin', to: 'backoffice/dashboard#index'
  get 'dashboard',to: 'dashboard#index'
  delete 'sign_out', to: 'backoffice/admin/session#destroy'
  
  scope module: :backoffice do
      resources :analistas
      resources :contatos
      resources :enderecos
      resources :empresas
      resources :equipamentos
      resources :estacoes
      resources :justificativas
      resources :localidades
      resources :produtos
      resources :respostas
      resources :regionais
      resources :servicos
      resources :telefones
      resources :uf
      resources :admin, except: [:show]
    end

  namespace :site do
    get 'home', to: 'home#index'
  end

  devise_for :usuarios, :skip => [:destroy]
  devise_for :admin, :skip => [:registrations]


  root 'site/home#index'

  resources :solicitacoes
end
