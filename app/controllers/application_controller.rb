require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @hero = Superhero.new(params[:superhero][:name], params[:superhero][:motto])
      @member1 = Member.new()
      @member2 = Member.new()
      erb :super_hero
    end
end
