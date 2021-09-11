class PagesController < ApplicationController
  def list
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
