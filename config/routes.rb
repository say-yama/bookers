Rails.application.routes.draw do
 root "homes#top"
  get "/" => "homes#top"
  patch "books/:id" => "books#update", as:"update_book"
  delete "books/:id" => "books#destroy", as:"destroy_book"
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   resources :books
end