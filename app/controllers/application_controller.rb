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
      @heros = Hero.all

      erb :team
    end
end

 @heros = params[:team][:heros]
    @heros.each do |hero, item|
      @hero_name << item[:name]
      @hero_power << item[:power]
      @hero_bio << item[:bio]
    end