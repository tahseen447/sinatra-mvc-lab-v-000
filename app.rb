require_relative 'config/environment'
require_relative "./models/piglatinizer"

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    user_input = params[:user_text]
    @pig_latinizer = PigLatinizer.new(user_input)
    puts @pig_latinizer.latinize
    erb :results
  end
end
