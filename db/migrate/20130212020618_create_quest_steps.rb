class CreateQuestSteps < ActiveRecord::Migration
  def change
    create_table :quest_steps do |t|
      t.references :quest
      t.references :step

      t.timestamps
    end
    add_index :quest_steps, :quest_id
    add_index :quest_steps, :step_id
  end
end
