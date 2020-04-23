Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   # rootはRoom一覧画面にしておく
   root 'rooms#index'

   # resourcesを使うとRESTfulなURLを自動生成できる
   resources :rooms, only: %i[new show]

end
