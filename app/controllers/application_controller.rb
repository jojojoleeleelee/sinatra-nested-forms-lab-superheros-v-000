require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @hero = Superhero.new(params[:superhero][:name], params[:superhero][:motto])
      @member1 = Member.new(params[:superhero][:member][0][:name], params[:superhero][:member][0][:power], params[:superhero][:member][0][:bio])
      @member2 = Member.new(params[:superhero][:member][1][:name], params[:superhero][:member][1][:power], params[:superhero][:member][1][:bio])
      erb :super_hero
    end
end
