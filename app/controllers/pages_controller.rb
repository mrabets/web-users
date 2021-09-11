class PagesController < ApplicationController
  def list
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end
end
