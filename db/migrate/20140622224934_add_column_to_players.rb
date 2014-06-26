class AddColumnToPlayers < ActiveRecord::Migration
  def change
    add_reference :players, :pick, index: true
  end
end
