class BizsController < ApplicationController
	def new
		@biz = Biz.new
	end

	def index
	    @users = User.all # Get's all the Users in our database and assigns it the the instance variable @user.
	end

	def create
		@biz = Biz.create(biz_params)
	    if @biz.save #If saving the user was successful
	      redirect_to "biz#customers"
	    else
	      render "new" #Go to the new view for the user
	    end
	end

	def biz_params
		params.require(:biz).permit(:username,:password,:needed_visits)
	end

	def customers
	end
	
end
