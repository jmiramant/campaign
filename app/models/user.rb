class User < ActiveRecord::Base

  attr_accessible :email, :name, :zip_code

end