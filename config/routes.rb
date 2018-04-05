Rails.application.routes.draw do
  resources :posts do
    resources :attachments, controller: 'posts/attachments'
  end
end
