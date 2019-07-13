Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'upload_file', to: "application#upload_file"
  get 'show_file', to: "application#show_file"
  
  root 'application#index'

end
