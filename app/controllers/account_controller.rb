class AccountController < ApplicationController
	def new
	end
	
	def register
		render params[:type]
	end
		

end
