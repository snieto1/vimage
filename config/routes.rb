Rails.application.routes.draw do

  get '/images_display' => 'images_display#display'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
