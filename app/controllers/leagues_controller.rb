class LeaguesController < ApplicationController
	before_action :authenticate_user!

	def create
		@league = League.new(league_params)
	end

	private

	def league_params
		params.require(:league).permit(:name)
	end

end