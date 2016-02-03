Rails.application.routes.draw do
  root "coops#index", as: "farm"

  resources :coops, only: [:show, :index, :new, :create]
end
