Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sitemaps, only: [:index, :show]
  get '/image/:slug', to: 'pages#image'
  get '/:before_slug/:slug/:after_slug', to: 'pages#meaning'
  get '/:id', to: 'pages#home'
  root 'pages#home'
end
