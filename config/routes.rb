Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books

  get 'collection' => 'books#collection'
  #アプリケーションの"/"ルートにアクセスしたとき、homesコントローラのcollectionアクションが呼ばれる
  root "books#collection"

  post 'books' => 'books#create'

  patch 'books/:id/edit' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
