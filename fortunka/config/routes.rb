Fortunka::Application.routes.draw do
resources :fortunes do
  resources :comments
  collection do
    get :tags
  end
end
root :to => 'fortunes#index'
match "/auth/:provider/callback" => "sessions#create"
match "/signout" => "sessions#destroy", :as => :signout

end
