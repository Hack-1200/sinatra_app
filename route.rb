#$LOAD_PATH<<File.dirname(__FILE__)
require './server'
require 'sinatra'
require 'sinatra/activerecord'
require 'json'
# set :database, "sqlite3:ege_db.sqlite3"

get '/' do 
	return_message={}
	serv=Server.all
	if !serv.empty?
		return_message[:status]="Success"
		return_message=serv
	else
		return_message[:status]="Error"
	end
	return_message.to_json
end
