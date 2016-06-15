Remedy::Engine.routes.draw do
  root :to => 'faqs#index'

  resources :faqs
  resources :documents, except: [:index]
end
