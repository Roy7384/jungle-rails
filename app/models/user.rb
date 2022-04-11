class User < ActiveRecord::Base
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  
  validates_uniqueness_of :email, case_sensitive: false
  validates_length_of :password, :minimum => 6

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.strip)
    if (user && user.authenticate(password))
      return user
    else
      return nil
    end
  end
  
end
