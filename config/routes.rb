EmberTest::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index, :show]
    end
  end

  root to: "ember#start"

  match "/*path" => "ember#start"
end
