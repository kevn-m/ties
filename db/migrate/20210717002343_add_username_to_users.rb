class AddUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :tie_code, :string
    add_column :users, :bio, :text
    add_column :users, :summary, :text
    add_column :users, :status, :string
  end
end
