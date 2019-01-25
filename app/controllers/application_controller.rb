require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

 get '/' do
      erb :super_hero
    end
    
     post '/teams' do
      @team = team.new(params[:super_hero])

      params[:team][:hero].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :team
    end
end
