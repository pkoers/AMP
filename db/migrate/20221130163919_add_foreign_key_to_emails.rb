class AddForeignKeyToEmails < ActiveRecord::Migration[7.0]
  def change
    add_column :emails, :user_id, :integer
    add_foreign_key :emails, :users
  end
end
