Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'inicio' => 'welcome#index'
  # get 'viabilidade' => 'viabilidade#index'
  # get 'pop' => 'pop#index'
  # get 'justificativas' => 'justificativas#index'
  # get 'localidades' => 'localidades#index'
  # get 'servicos' => 'servicos#index'
  # get 'uf' => 'uf#index'
  # get 'regionais' => 'regionais#index'
  # get 'empresas' => 'empresas#index'
  # get 'analistas' => 'analistas#index'
  
end
