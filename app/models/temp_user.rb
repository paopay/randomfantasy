class TempUser < ActiveRecord::Base
	has_many :temp_user_leagues
	has_many :leagues, through: :temp_user_leagues
end