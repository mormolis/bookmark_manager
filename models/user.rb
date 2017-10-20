require 'bcrypt'
class User

  include DataMapper::Resource
  
  property :id, Serial
  property :email, String
  property :encrypted_password, Text

  def password=(password)
    self.encrypted_password = BCrypt::Password.create(password)
  end

end


