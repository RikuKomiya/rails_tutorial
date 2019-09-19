Rails.application.routes.draw do



  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }


  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get  'signup',  to: 'users#new'



  resources :courses do
  resources :microposts
  end







  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end