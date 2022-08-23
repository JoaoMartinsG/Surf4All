class AddVolumeColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :volume, :float
  end
end
