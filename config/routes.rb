Rails.application.routes.draw do
   root to: 'homes#top'

    resources :books, only: [:index, :create, :edit, :show, :update]
     delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
