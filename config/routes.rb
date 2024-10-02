Rails.application.routes.draw do
  get '/', to: 'static_pages#index'
  get '/posts', to: 'static_pages#index'

  root 'static_pages#home'

  post '/posts/checklist', to: 'posts#checklist'
end
