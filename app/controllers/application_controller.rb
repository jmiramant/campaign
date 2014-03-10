class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @user = User.new
  end

  def about
  end

  def issues
  end

  def video
  end

  def volenteer
    @user = User.new
  end

end
