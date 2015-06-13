Rails.application.routes.draw do

  scope 'api/v1' do
    use_doorkeeper
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show, :create, :update, :destroy]
      resources :sections do
        resources :posts
        resources :sub_sections
      end
    end
  end
end
