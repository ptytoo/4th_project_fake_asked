Rails.application.routes.draw do
  root 'question#index'
  get 'question/show'
  get 'question/sign_up'
  get 'question/sign_up_process'
  get 'question/login'
  get 'question/login_process'
  get 'question/logout'
end
