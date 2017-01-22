Rails.application.routes.draw do
  root to: "repos#index"

  resources :repos, only: [:index, :show], id: /[^\/]+\/[^\/]+/ do
    resources :reports, only: [:index, :show], id: /\d\d\d\d-\d\d-\d\d/
  end
end
