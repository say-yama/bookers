Rails.application.routes.draw do
 root "homes#top"
  get "/" => "homes#top"
  patch "books/:id" => "books#update", as:"update_book"
  delete "books/:id" => "books#destroy", as:"destroy_book"
 
   resources :books
end