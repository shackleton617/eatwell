class AddTokenWalletToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :token_wallet, :string
  end
end
