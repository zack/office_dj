Rails.application.routes.draw do
  root 'welcome#index'

  resource :users
end
