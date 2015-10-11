class PagesController < ApplicationController
	def home
	end


	skip_before_filter :authorize
        @bizs = Biz.all
	def new_stores
		@bizs = Product.search(params[:name])
	end
end
