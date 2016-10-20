class Posts < ActiveRecord::Migration[5.0]
  def change
  	create_table :servers do |t|
  		t.string :subject 
  		t.text :head 
  		t.text :body
  		t.timestamps 
  	end
  	add_index :servers, :subject
  end
end
