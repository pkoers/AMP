class DropEmailAdresses2 < ActiveRecord::Migration[7.0]
  def change
    drop_table :email_adresses
  end
end
