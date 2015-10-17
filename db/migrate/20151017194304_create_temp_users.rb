class CreateTempUsers < ActiveRecord::Migration
  def change
    create_table :temp_users do |t|
    	t.string 	:email, null: false
    	t.boolean :joined, default: false, null: false
    	t.timestamps
    end
  end
end
