class AccountsController < ApplicationController
	before_filter :signed_in_user, except: [:new, :create]
	before_filter :correct_user,   only: [:edit, :update]
	before_filter :admin_user,     only: :destroy
 
	def new
		#@type = params[:type]
		@account= Account.new
		@profile= Profile.new
		render params[:type]
	end

	def create
		@account = Account.new(params[:account])
		@profile = Profile.new(params[:profile])
		if @account.save
			sign_in @account
			redirect_to @account
		else
			render 'new'
		end
	end

	def destroy
		Account.find(params[:id]).destroy
		flash[:success] = "User destroyed."
		redirect_to accounts_url
	end
	
	def register
		render params[:type]
	end

	def show
		@account= Account.find(params[:id])
		@microposts = @account.microposts.paginate(page: params[:page])
	end

	def index
		@accounts = Account.paginate(page: params[:page])
	end

	def edit
		@account = Account.find(params[:id])
	end

	def update
		@account = Account.find(params[:id])
		if @account.update_attributes(params[:user])
			flash[:success] = "Profile updated"
			sign_in @account
			redirect_to @account

		else
			render 'edit'
		end
	end

	def m_home
		#if signed_in?
		@micropost = current_user.microposts.build
		@feed_items = current_user.feed.paginate(page: params[:page])
	end

  private

	def correct_user
		@account = Account.find(params[:id])
		redirect_to(root_path) unless current_user?(@account)
	end

	def admin_user
		redirect_to(root_path) unless current_user.admin?
	end
		
end