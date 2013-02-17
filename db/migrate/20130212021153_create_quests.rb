class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.string :description
      t.integer :reward

      t.timestamps
    end
  end
end
