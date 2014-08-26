Rails.application.routes.draw do
  root to: 'static_pages#index'
  devise_for :users
  resources :users

  # Static Pages
  match '/privacy',  to: 'static_pages#privacy',  via: [:get]
  match '/about', to: 'static_pages#about',  via: [:get]
  match '/contact', to: 'static_pages#contact',  via: [:get]
  match '/eula', to: 'static_pages#eula',  via: [:get]

  # Tax Blog
  devise_for :blogs
  resources :blogs

end
