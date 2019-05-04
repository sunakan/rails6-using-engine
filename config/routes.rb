Rails.application.routes.draw do
  root to: "root#index"
  mount BlogEngine::Engine, at: "/blog"
end
