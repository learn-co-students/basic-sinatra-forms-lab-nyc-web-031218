require 'sinatra/base'
require 'pry'

class App < Sinatra::Base
  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    # @correct_names = {"name" => "Team Name",
    #   "coach" => "Coach",
    #   "pg" => "Point Guard",
    #   "sg" => "Shooting Guard",
    #   "sf" => "Shooting Forward",
    #   "pf" => "Power Forward",
    #   "c" => "Center"
    # }
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @sf = params[:sf]
    @pf = params[:pf]
    @c = params[:c]
    # @params = params.map {|k, v| [@correct_names[k], v] }.to_h
    erb :team
  end

end
