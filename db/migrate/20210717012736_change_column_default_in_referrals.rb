class ChangeColumnDefaultInReferrals < ActiveRecord::Migration[6.1]
  def change
    change_column_default :referrals, :seen_by_recommended, false
    change_column_default :referrals, :seen_by_to_user, false
  end
end
