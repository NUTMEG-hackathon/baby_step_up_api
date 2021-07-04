Rails.application.routes.draw do
  resources :favorite_templates
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
      put "users/update_select_template" => "users#update_select_template"
      put "users/update_doing_step" => "users#update_doing_step"
      put "users/update_reset_time" => "users#update_reset_time"
    end
  end
end

