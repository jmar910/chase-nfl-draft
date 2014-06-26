class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :round
      t.integer :pick_no
      t.references :team, index: true

      t.timestamps
    end
  end
end
