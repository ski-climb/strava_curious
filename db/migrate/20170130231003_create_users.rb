class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :token

      t.timestamps
    end
  end
end
