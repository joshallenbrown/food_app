class RenameAccount
sToAccounts < ActiveRecord::Migration[5.0]
  def change
  	rename_table :account
s, :accounts
  end
end
