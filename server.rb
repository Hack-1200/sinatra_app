# require 'sinatra'
require 'active_record'
# require 'sinatra/activerecord'
# set :database, "config/database.yml"
class Server<ActiveRecord::Base
	validates :subject,:head,:body, presence:true
end