class ChangeDefaultStatusToNone < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :status, 'none'

  end
end
