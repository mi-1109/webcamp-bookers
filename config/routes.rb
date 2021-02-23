Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :homes

  get 'collection' => 'homes#collection'
  #アプリケーションの"/"ルートにアクセスしたとき、homesコントローラのcollectionアクションが呼ばれる
  root "homes#collection"

  post 'homes' => 'homes#create'
end
