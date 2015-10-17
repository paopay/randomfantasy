class CreateTempUserLeagues < ActiveRecord::Migration
  def change
  	create_table :temp_user_leagues do |t|
  		t.belongs_to :temp_user, null: false
  		t.belongs_to :leagues, null: false
  		t.timestamps
  	end
  end
end
