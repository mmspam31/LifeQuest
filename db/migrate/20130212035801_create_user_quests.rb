class CreateUserQuests < ActiveRecord::Migration
  def change
    create_table :user_quests do |t|
      t.references :quest
      t.references :user
      t.boolean :complete

      t.timestamps
    end
    add_index :user_quests, :quest_id
    add_index :user_quests, :user_id
  end
end
