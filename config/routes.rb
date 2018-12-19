Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :site do
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

