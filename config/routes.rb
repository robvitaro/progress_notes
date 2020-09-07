Rails.application.routes.draw do
  resources :progress_notes
  resources :patients

  root 'progress_notes#new'
end
