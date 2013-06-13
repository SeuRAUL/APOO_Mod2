class ProvasController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@prova = @user.provas.create(params[:prova])
		redirect_to user_path(@user)
	end

	def destroy
		@user = User.find(params[:post_id])
		@prova = @user.provas.find(params[:id])
		@prova.destroy
		redirect_to user_path(@user)
	end
end
