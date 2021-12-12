Rails.application.routes.draw do
  resources :user_vegetables
  resources :vegetables
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      registrations: 'api/auth/registrations'
    }
  end
  namespace 'api' do
    namespace 'v1' do
      get "users/index" => "users#index"
      get "users/show" => "users#show"
      get "users/show_users_ranking" => "users#show_users_ranking"
      put "users/edit_user_point" => "users#edit_user_point"
    end
  end
end
