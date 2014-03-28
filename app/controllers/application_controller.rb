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
      :id => '8cbdb59b13', 
      :email => {:email => params['user']['email']}, 
      :merge_vars => {:FNAME => params['user']['name']}, 
      :double_optin => false})
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

end