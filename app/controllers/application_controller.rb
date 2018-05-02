require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @hero = Superhero.new(params[:team][:name], params[:team][:motto])
      @member1 = Member.new(params[:team][:member][0][:name], params[:team][:member][0][:power], params[:team][:member][0][:bio])
      @member2 = Member.new(params[:team][:member][1][:name], params[:team][:member][1][:power], params[:team][:member][1][:bio])

      erb :super_hero
    end
end
