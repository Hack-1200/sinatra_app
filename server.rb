# require 'sinatra'
# require 'sintra/activerecord'
# set :database, "sqlite3:ege_db.sqlite3"
class Server 
	def initialize 

	end

	def get_text
		data={
		head:"Yahoo!",
		body:"Hello my Friend! What are you doing?"
		}

		return data
	end

end