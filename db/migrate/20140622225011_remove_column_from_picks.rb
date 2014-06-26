class RemoveColumnFromPicks < ActiveRecord::Migration
  def change
    remove_column :picks, :player_id, :string
  end
end
