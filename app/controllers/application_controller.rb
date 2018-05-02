require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @hero = Superhero.new(binding.pry)
      @member1 = Member.new()
      @member2 = Member.new()
      erb :super_hero
    end
end
