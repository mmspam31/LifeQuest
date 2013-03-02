class UserQuestStep < ActiveRecord::Base
  belongs_to :user_quest
  belongs_to :quest_step
  attr_accessible :complete, :user_quest, :quest_step, :quest_step_attributes
  accepts_nested_attributes_for :quest_step, :user_quest
  def to_s
    quest_step.step.description
  end
end
