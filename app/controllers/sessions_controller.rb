# coding: utf-8
class SessionsController < ApplicationController
   def new
   end

   def create
	  user=User.find_by(email: params[:session][:email].downcase)
	  if user && user.authenticate(params[:session][:password])
		 log_in user
		 redirect_to user

	  else
		 flash.now[:danger]='Invalid email/password combination' #本当は正しくない
		 render 'new'
	  end
   end

   def destoroy
	  log_out
	  redirect_to root_url
   end
end
