class RemoveColumnFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :pick_id, :string
  end
end
