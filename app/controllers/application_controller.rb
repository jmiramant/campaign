class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  end

  def about
  end

  def issues
  end

  def video
  end

  def volenteer
  end

  def mailchimp_add
    gb = Gibbon::API.new("7ebdadb43149ce374c6693ff4b83b212-us8")
    gb.lists.subscribe({
      :id => list_id, 
      :email => {:email => 'email_address'}, 
      :merge_vars => {:FNAME => 'First Name', :LNAME => 'Last Name'}, 
      :double_optin => false})
  end

end
