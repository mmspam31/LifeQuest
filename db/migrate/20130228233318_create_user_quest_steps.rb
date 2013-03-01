class CreateUserQuestSteps < ActiveRecord::Migration
  def change
    create_table :user_quest_steps do |t|
      t.boolean :complete
      t.references :user_quest
      t.references :quest_step

      t.timestamps
    end
    add_index :user_quest_steps, :user_quest_id
    add_index :user_quest_steps, :quest_step_id
  end
end
