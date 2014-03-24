class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    # gb = Gibbon::API.new("your_api_key")
    # gb.lists.subscribe({
    #   :id => list_id, 
    #   :email => {:email => 'email_address'}, 
    #   :merge_vars => {:FNAME => 'First Name', :LNAME => 'Last Name'}, 
    #   :double_optin => false})
  end

  def about
  end

  def issues
  end

  def video
  end

  def volenteer
  end

end
