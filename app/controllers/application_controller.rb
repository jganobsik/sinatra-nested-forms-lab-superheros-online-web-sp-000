require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

 get '/' do
      erb :super_hero
    end
    
     post '/teams' do
      @team = team.new(params[:super_hero])

      params[:team][:hero].each do |details|
        Hero.new(details)
      end
   @team_members = params[:team][:members]
    @team_members.each do |hero, attrib|
      @hero_name << attrib[:name]
      @hero_power << attrib[:power]
      @hero_bio << attrib[:bio]
    end

      erb :team
    end
end

 