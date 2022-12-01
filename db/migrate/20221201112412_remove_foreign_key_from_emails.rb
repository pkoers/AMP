class RemoveForeignKeyFromEmails < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :emails, :users
  end
end
