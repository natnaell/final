class User < ActiveRecord::Base

      has_secure_password
      has_many :teams, :dependent => :destroy

end
