class UsersController < ApplicationController
	def new
    	@user = User.new 
  	end

  	def index
    	@users = User.all # Get's all the Users in our database and assigns it the the instance variable @user.
  	end

	def show
    	@user = User.find(params[:id]) # Query for the user with the id that is in params
  	end

  	def create 	
    	@user = User.create(user_params)
	    if @user.save #If saving the user was successful
	      redirect_to "users#usertest"
	    else
	      render "new" #Go to the new view for the user
	    end
    end

    def search
    end

    def user_params
		params.require(:user).permit(:username,:password,:phone)
	end

	def usertest
	end

  def biztest
  end

end
