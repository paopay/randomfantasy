class TempUserLeague < ActiveRecord::Base
	belongs_to :temp_user
	belongs_to :league
end