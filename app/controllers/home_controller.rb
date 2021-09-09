class HomeController < ApplicationController
  def index
    @provider_keys = User.group(:provider).count.keys.map(&:capitalize)

    @provider_values = User.group(:provider).count.values
  end
end
