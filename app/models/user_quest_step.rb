class UserQuestStep < ActiveRecord::Base
  belongs_to :user_quest
  belongs_to :quest_step
  attr_accessible :complete, :user_quest, :quest_step

  def to_s
    quest_step.step.description
  end
end
