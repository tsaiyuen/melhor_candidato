Rails.application.routes.draw do
  root to: 'pages#home'

  resources :candidates, only: :index do
    post 'search_result', on: :collection
  end

end
