require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @translation_hash = {
      "name" => "Team Name",
      "coach" => "Coach",
      "pg" => "Point Guard",
      "sg" =>"Shooting Guard" ,
      "pf" => "Power Forward",
      "sf" => "Small Forward",
      "c" => "Center"
    }
    @team_data = params
    # puts @team_data

    # @team_data.each do | k, v |
    #     @team_data[@translation_hash[k]] = @team_data.delete(k)
    # end
    erb :team
  end


end
