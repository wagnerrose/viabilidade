Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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
    resources :circuitos
    resources :admin, except: [:show]
    resources :usuarios, except: [:show]
  end

  scope module: :site do
    get 'home', to: 'home#index'

    # devise_for :usuarios, skip: [:sessions, :registrations]
    # as :usuario do
    #   get 'signin', to: 'usuarios/sessions#new', as: :new_user_session2
    #   post 'signin', to: 'usuarios/sessions#create', as: :user_session
    #   delete 'signout', to: 'usuarios/sessions#destroy', as: :destroy_user_session
    # end

  end
#    get 'usuarios/sign_out', to: 'usuarios/sessions#destroy'

  # devise_for :admin, skip: [:registrations]
  root 'site/home#index'
  resources :solicitacoes
end
