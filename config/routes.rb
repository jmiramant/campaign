Campaign::Application.routes.draw do
  root :to => "application#index"

  match 'about' => "application#about"
  match 'issues' => "application#issues"
  match 'video' => "application#video"
  match 'volenteer' => "application#volenteer" 
  post 'email' => "application#mailchimp_add" 

end
