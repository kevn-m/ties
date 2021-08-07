class ChangeColumnDefaultInMessages < ActiveRecord::Migration[6.1]
  def change
    change_column_default :messages, :seen, false
  end
end
