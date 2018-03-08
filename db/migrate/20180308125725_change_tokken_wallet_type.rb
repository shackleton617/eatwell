class ChangeTokkenWalletType < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :token_wallet

    add_column :users, :token_wallet, :integer, default: 0
  end
end
