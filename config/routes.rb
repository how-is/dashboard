Rails.application.routes.draw do
  root to: "repos#index"

  scope '/*repo_id', repo_id: /[^\/]+\/[^\/]+/ do
    get '/' => 'reports#index', as: :repo
    get '/:date' => 'reports#show', as: :repo_date, date: /\d\d\d\d-\d\d-\d\d/
  end
end
