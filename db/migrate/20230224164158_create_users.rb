class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.float :balance, default: 10000.00
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
