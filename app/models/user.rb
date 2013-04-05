class User < ActiveRecord::Base

  def self.find_or_create_from_auth_hash(auth_hash)
    user = find_or_create_by(uid: auth_hash[:uid])
    user.update nickname: auth_hash[:info][:nickname], name: auth_hash[:info][:name], email: auth_hash[:info][:email]
    user
  end

end
