Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books

  get 'collection' => 'books#collection'
  #アプリケーションの"/"ルートにアクセスしたとき、homesコントローラのcollectionアクションが呼ばれる
  root "books#collection"

  post 'books' => 'books#create'
<<<<<<< HEAD

  patch 'books/:id/edit' => 'books#update', as: 'update_book'
=======
>>>>>>> 6c071705bd93929294d5ec6d0954da44b0fbebed
end
