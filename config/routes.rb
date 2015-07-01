Rails.application.routes.draw do
  get 'home/new'
  get 'home/create'

  get 'welcome/index'

  get 'copies/index'
  get 'borrowings/index'
  get 'books/index'
  get 'copies/index'
  get 'copies/show'
  get 'books/_form'
root 'books#index'
  
resources :home    

resources :customers do
  resources :borrowings
end

resources :copies

resources :borrowings do
  resources :copies
end

resources :books do
  resources :copies
end
end
