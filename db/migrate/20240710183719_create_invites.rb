class CreateInvites < ActiveRecord::Migration[7.1]
  def change
    create_table :invites do |t|
      t.string :code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
