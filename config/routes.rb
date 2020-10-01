Rails.application.routes.draw do
  namespace :api do

    get "/jobs" => "jobs#index"

  end

end
