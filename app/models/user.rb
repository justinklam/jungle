class User < ActiveRecord::Base

  has_secure_password

  # validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: { minimum: 3}

  # user authentication
  def self.authenticate_with_credentials(email, password)
    # locate user with email, remove white spaces and set all lowercase
    user = User.find_by_email(email.strip.downcase)

    if user && user.authenticate(password)
      user
    else
      nil
    end

  end

end