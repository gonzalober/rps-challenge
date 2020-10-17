require 'sinatra/base'
require_relative './names'
require_relative './buttons'

class RockScissorsPaper < Sinatra::Base
  
  get "/" do
    erb :index
  end

  post "/names" do
    @names = NamesButton.new(params[:player_name]).names_button
    erb :buttons
  end

  post "/buttons" do
    @rocks = params[:rock]
    @papers = params[:paper]
    @scissors = params[:scissors]
    @button_challenge = ButtonsSession.new(@rocks, @papers, @scissors).button_challenge
    erb :result
  end

  run! if app_file == $0
end