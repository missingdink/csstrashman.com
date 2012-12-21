Csstrashman::Application.routes.draw do
  match 'styleguide/:name' => 'styleguide#show'

  match 'styleguide' => 'styleguide#index'

  resources :styles, only: [:new, :create, :show]
  root to: "styles#new"
end
