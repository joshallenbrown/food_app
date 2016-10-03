class RenameSalesToAccounts < ActiveRecord::Migration[5.0]
  def change
  	rename_table :sales, :accounts
  end
end
