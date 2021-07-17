class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tie, null: false, foreign_key: true
      t.text :content
      t.boolean :seen

      t.timestamps
    end
  end
end
