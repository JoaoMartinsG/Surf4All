class RenameTypeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :boards, :type, :type_of_board
  end
end
