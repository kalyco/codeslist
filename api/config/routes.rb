Rails.application.routes.draw do
  scope 'api/v1' do
    use_doorkeeper
  end

  namespace :api do
    namespace :v1 do
      resource :token, only: [:create]
      resources :users, only: [:show, :create, :update, :destroy]
      resources :sections do
        resources :posts
        resources :sub_sections
      end
    end
  end
end
