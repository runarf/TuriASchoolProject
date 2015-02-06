class AccountsController < ApplicationController
	def new
		@account = Account.new
	end
	
	def show
	end
	
	def edit
	end
	
	def create
		@account = Account.new(account_params)
		if @account.save
			flash[:notice] = "Account successfully created."
			redirect_to @account
		else
		  render :new
		end
	end
	
	
	
	private
	
	def account_params
		params.require(:account).permit(:username, :email, :password, :password_confirmation)
	end
end
