require 'sinatra'
require 'sinatra/flash'

class Test < Sinatra::Base
	
	register Sinatra::Flash
	enable :sessions

	get '/' do
  	erb :index
	end

	post '/time' do
		flash[:message] = "This is the best"
		redirect '/'
	end		
end
