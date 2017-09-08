Rails.application.routes.draw do
  get 'backoffice', to: 'backoffice/dashboard#index'
  get 'webmin', to: 'backoffice/dashboard#index'
  get 'dashboard',to: 'dashboard#index'

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

#  devise_for :usuarios
#  devise_for :admin, :skip => [:registrations]

  devise_for :admin, :class_name => 'Admin', :controllers =>
    { :registrations => 'backoffice/admin/registrations',
      :sessions => 'backoffice/admin/sessions',
      :passwords => 'backoffice/admin/passwords'} do
    get "admin/sign_up" => "backoffice/admin/registrations#new", :as => :admin_signup
    get  "admin/sign_in" => "backoffice/admin/sesseion#new", :as => :admin_signin
  end
  devise_for :usuario, :class_name => 'Usuario', :controllers =>
    { :registrations => 'backoffice/usuarios/registrations',
      :sessions => 'backoffice/usuarios/sessions',
      :passwords => 'backoffice/usuarios/passwords'} do
    get "admin/sign_up" => "backoffice/usuarios/registrations#new", :as => :usuarios_signup
    get  "admin/sign_in" => "backoffice/usuarios/sesseion#new", :as => :usuarios_signin
  end



  root 'site/home#index'

  resources :solicitacoes
end
