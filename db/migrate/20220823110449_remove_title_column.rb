class RemoveTitleColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column(:boards, :title)
  end
end
