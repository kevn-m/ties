class CreateReferrals < ActiveRecord::Migration[6.1]
  def change
    create_table :referrals do |t|
      t.text :reason
      t.boolean :requested
      t.boolean :reject
      t.text :message_from_to_user
      t.boolean :seen_by_to_user
      t.boolean :seen_by_recommended
      t.references :referrer_user, foreign_key: { to_table: 'users' }
      t.references :recommended_user, foreign_key: { to_table: 'users' }
      t.references :to_user, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end
