Csstrashman::Application.routes.draw do
  resources :styles, only: [:new, :create, :show]
  root to: "styles#new"
end
