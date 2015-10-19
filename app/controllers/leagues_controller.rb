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

	def randomize_email_order(emails)
		email_order = {}
		emails.shuffle!

		emails.each_with_index do |email, index|
			email_order[index+1] = email
		end

		p '-=-=' * 20
		p email_order
		p '-=-=' * 20
		email_order
	end

	def send_email(email)
		p "-=-=" * 20
		p "sending email to #{email}"
	end

	def league_params
		params.require(:league).permit(:name)
	end

end