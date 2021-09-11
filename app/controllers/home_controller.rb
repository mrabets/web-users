class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @provider_keys = User.group(:provider).count.keys.map(&:capitalize)
    @provider_values = User.group(:provider).count.values
  end
end
