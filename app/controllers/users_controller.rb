class UsersController < ApplicationController

	def index
		@user = User.new
		@purchase_period_options = ["1 Month", "1-3 Months", "4-6 Months", "7-12 Months", "More than 1 Year"]
		@vehicles = ["LEAF", "Kicks", "Rogue Sport", "Rogue"]
		@consideration = ["Definitely would consider", "Probably would consider", "Might or might not consider", "Probably would not consider", "Definitely would not consider"]
		@date = DateTime.now.strftime("%m/%d/%Y")
	end

	def create
	    @user = User.new(user_params)
	    if @user.save
	    	redirect_to root_url
	    	flash[:success] = "Thank you for submitting your information. Enjoy your ride!"
	    else
	    	render action: 'new'
	    end
	end

	def show
	end


	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :street_address, :city, :state_abbr, :zip_code, :email)
	end

end
