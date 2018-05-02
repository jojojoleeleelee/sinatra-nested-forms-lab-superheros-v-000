require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @hero = Superhero.new(binding.pry)
      @member1 =
      @member 2
      erb :super_hero
    end
end
