Rails.application.routes.draw do
  root "umagacha#index"
  get "umagacha/index"
  get "umagacha/result"
  post "result" => "umagacha#result"
  get "result" => "umagacha#result"

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
end
