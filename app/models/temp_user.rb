class TempUser < ActiveRecord::Base
	has_many :temp_user_leagues, dependent: :destroy
	has_many :leagues, through: :temp_user_leagues
end