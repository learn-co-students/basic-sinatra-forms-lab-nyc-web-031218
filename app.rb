require 'sinatra/base'
require 'pry'

class App < Sinatra::Base
  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @correct_names = {"name" => "Team Name",
      "coach" => "Coach",
      "pg" => "Point Guard",
      "sg" => "Shooting Guard",
      "sf" => "Shooting Forward",
      "pf" => "Power Forward",
      "c" => "Center"
    }
    @params = params.map {|k, v| [@correct_names[k], v] }.to_h
    erb :team
  end

end
