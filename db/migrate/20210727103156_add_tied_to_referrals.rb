class AddTiedToReferrals < ActiveRecord::Migration[6.1]
  def change
    add_column :referrals, :tied, :boolean
  end
end
