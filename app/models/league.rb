class League < ActiveRecord::Base
	has_many :user_leagues
	has_many :users, through: :user_leagues

	has_many :temp_user_leagues
	has_many :temp_users, through: :temp_user_leagues
end
