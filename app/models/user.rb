class User < ActiveRecord::Base

  def self.find_or_create_from_auth_hash(auth_hash)
    user = find_or_create_by(uid: auth_hash[:uid])
    user.update nickname: auth_hash[:info][:nickname], name: auth_hash[:info][:name], email: auth_hash[:info][:email],
                token: auth_hash[:credentials][:token], token_expires_at: Time.at(auth_hash[:credentials][:expires_at]),
                refresh_token: auth_hash[:credentials][:refresh_token]
    user
  end

end
