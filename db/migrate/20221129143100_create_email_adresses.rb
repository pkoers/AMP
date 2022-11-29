class CreateEmailAdresses < ActiveRecord::Migration[7.0]
  def change
    create_table :email_adresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_adress
      t.boolean :to
      t.boolean :from

      t.timestamps
    end
  end
end
