Rails.application.routes.draw do
  resources :done_steps
  resources :steps
  resources :templates
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      registrations: 'api/auth/registrations'
    }
  end
  namespace 'api' do
    namespace 'v1' do
      get "users/index" => "users#index"
    end
  end
end

