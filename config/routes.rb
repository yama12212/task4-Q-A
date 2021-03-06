Rails.application.routes.draw do
  get '/' => "homes#top"

  resources :rooms do
    collection do
      get 'searches/area'
      get 'searches/keyword'
    end
  end

  post 'reservation/confirm' => 'reservation#confirm'
  post 'reservation' => 'reservation#create'
  get 'reservation/show' => 'reservation#show'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
