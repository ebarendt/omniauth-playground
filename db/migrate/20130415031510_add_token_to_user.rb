class AddTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :token, :text
    add_column :users, :token_expires_at, :timestamp
    add_column :users, :refresh_token, :string
  end
end
