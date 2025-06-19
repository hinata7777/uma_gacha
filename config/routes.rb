Rails.application.routes.draw do
  root "umagacha#index"
  get "umagacha/index"
  post "result", to: "umagacha#result", as: "result"
  get "show_result", to: "umagacha#show_result", as: "show_result"
end
