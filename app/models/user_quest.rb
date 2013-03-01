class UserQuest < ActiveRecord::Base
  belongs_to :quest
  belongs_to :user
  has_many :user_quest_steps, :dependent => :destroy
  has_many :steps, :through => :user_quest_steps
  attr_accessible :complete, :quest, :quest_id, :user, :user_id, :user_quest_steps
  accepts_nested_attributes_for :user_quest_step_ids
end
