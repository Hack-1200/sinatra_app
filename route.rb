$LOAD_PATH<<File.dirname(__FILE__)
require 'server.rb'
require 'sinatra'
require 'sinatra/activerecord'
require 'json'
# set :database, "sqlite3:ege_db.sqlite3"
serv=Server.new
get '/' do 
	return_message={}
	# sr=serv.get_text
	if sr=serv.get_text
		return_message={
			status:'Succes',
			time:Time.now,
			data:sr
		}
	else
		return_message[:status]='error'
		# return_message[:body]=0
	end
	return_message.to_json
end