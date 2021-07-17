class CreateTies < ActiveRecord::Migration[6.1]
  def change
    create_table :ties do |t|
      t.references :user1, foreign_key: { to_table: 'users' }
      t.references :user2, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end
