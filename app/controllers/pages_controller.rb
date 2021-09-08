class PagesController < ApplicationController
  def list
    @users = User.all
  end
end
