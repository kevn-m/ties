class AddTiedToTies < ActiveRecord::Migration[6.1]
  def change
    add_column :ties, :tied, :boolean
  end
end
