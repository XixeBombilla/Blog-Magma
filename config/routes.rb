BlogMagma::Application.routes.draw do
 
  devise_for :users, :path => "usuarios", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  
  resources :temas
  resources :articulos
  resources :coments

   root :to => 'public#index'
   
   match "coments", :to => "coments#index", :as => :coments

end
