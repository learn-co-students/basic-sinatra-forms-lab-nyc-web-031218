require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
   erb :newteam
 end

  post "/team" do
    @attributes = params
  erb :team
  end

end
