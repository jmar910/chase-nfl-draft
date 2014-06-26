class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.references :pick, index: true

      t.timestamps
    end
  end
end
