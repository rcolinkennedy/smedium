require 'spec_helper'

describe "routes for Static Pages" do

  it "routes root to home page" do
    expect(get('/')).to route_to(
      :controller =>'static_pages',
      :action => "home"
      )
  end

  it "routes to About page" do
    expect(get('/about')).to route_to(
      :controller =>'static_pages',
      :action => "about"
      )
  end
  
end


describe "routes for Users resource" do

  it "routes Users to Profile page" do
    expect(get("/:profile_url")).to route_to(
      :controller =>"users",
      :action =>"show",
      :profile_url =>":profile_url"
      )
  end

  it "routes Users to the Register page" do
    expect(get("/:profile_url/register")).to route_to(
      :action =>"register",
      :controller =>"users",
      :action =>"register",
      :profile_url =>":profile_url"
      )
  end


  it "routes Users to the Settings page" do
    expect(get("/me/settings")).to route_to(
      :controller => "users",
      :action => "settings"
      )
  end

end




# get 'auth/twitter/callback', to: 'sessions#create'
# get 'auth/failure', to: redirect('/')
# get '/signout', to: 'sessions#destroy', as: 'signout'
# get '/logout', to: 'sessions#destroy', as: 'logout'

# resources :users, :except => :show
# get "/:profile_url", to: "users#show", as: 'profile'



# expect(:get => "/articles/2012/11/when-to-use-routing-specs").to route_to(
#   :controller => "users")