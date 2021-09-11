class UsersController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def destroy_multiple

    User.destroy(params[:users])

    respond_to do |format|
      format.html { redirect_to users_path }
      format.json { head :no_content }
    end

  end
end
