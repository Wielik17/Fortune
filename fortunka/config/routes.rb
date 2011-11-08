Fortunka::Application.routes.draw do
  resources :fortunes

root :to => 'fortunes#index'
match "/auth/:provider/callback" => "sessions#create"
match "/signout" => "sessions#destroy", :as => :signout

end
