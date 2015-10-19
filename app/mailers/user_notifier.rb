class UserNotifier < ApplicationMailer
	default from: 'no-reply@randomfantasy.com'

	def draft_order_email(league_owner, league, to_user, draft_order)
		@to_user 			= to_user
		@league_owner = league_owner
		@league 			= league
		@draft_order 	= draft_order
		mail( to: @to_user.email,
		 subject: "#{@league.name} Draft Order by #{@league_owner.email}"
		)
	end

end
