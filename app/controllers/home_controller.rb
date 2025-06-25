class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @total_clientes = Cliente.count
  end
end
