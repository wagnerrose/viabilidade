class Site::HomeController < ApplicationController
  before_action :authenticate_usuario!

  layout "site"

  def index
  end
end
