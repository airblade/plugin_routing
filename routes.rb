# Examples of the routes your (other) plugins can define.

# Add an anonymous route
connect "/login", :controller => "my_plugin/account", :action => "login"
# Add a named route
logout "/logout", :controller => "my_plugin/account", :action => "logout"

# Some restful stuff
resources :things do |t|
  t.resources :other_things
end
