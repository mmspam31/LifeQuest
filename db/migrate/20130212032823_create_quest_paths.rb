class CreateQuestPaths < ActiveRecord::Migration
  def change
    create_table :quest_paths do |t|
      t.references :quest
      t.references :path

      t.timestamps
    end
    add_index :quest_paths, :quest_id
    add_index :quest_paths, :path_id
  end
end
