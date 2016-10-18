class CreateQuestsTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :quets do |t|
  		t.string :head
  		t.string :subject
  		t.string :group 
  		t.string :img
  		t.string :answer
  		# t.datetime :year
  		t.timestamps null: false
  	end
  end
end
