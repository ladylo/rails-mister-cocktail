Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  delete 'doses/:id', to: 'doses#destroy', as: "doses_delete"
end
