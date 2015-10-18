class LeaguesController < ApplicationController
	before_action :authenticate_user!

	def new
		@league = League.new
	end

	def create
		@league = League.new(league_params)

		if @league.save!
			params[:email].each do |email|
				user = User.find_by(email: email)
				if user
					user.leagues << @league
				else
					temp = TempUser.find_or_create_by(email: email)
					temp.leagues << @league
				end

			end
		else
			render 'new'
		end

		redirect_to root_path
	end

	private

	def send_email(email)
		p "-=-=" * 20
		p "sending email to #{email}"
	end

	def league_params
		params.require(:league).permit(:name)
	end

end