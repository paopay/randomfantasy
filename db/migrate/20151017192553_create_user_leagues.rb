class CreateUserLeagues < ActiveRecord::Migration
  def change
    create_table :user_leagues do |t|
    	t.belongs_to :user, null: false
    	t.belongs_to :league, null: false
    	t.timestamps
    end
  end
end
