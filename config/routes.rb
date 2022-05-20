Rails.application.routes.draw do
#Please fix all syntax error(s) below
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
      resources :books
    end  
  
    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
