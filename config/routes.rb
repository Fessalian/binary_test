BinaryTestApp::Application.routes.draw do
  root to: 'welcome#index'

  resources :recipes
end

