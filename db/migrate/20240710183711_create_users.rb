class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :mobile
      t.string :password_digest
      t.string :role
      t.string :invite_code

      t.timestamps
    end
  end
end
