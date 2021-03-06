class UserQuest < ActiveRecord::Base
  belongs_to :quest
  belongs_to :user
  has_many :user_quest_steps, :dependent => :destroy
  attr_accessible :complete, :quest, :quest_id, :user, :user_id, :user_quest_steps_attributes, :user_attributes
  accepts_nested_attributes_for :user_quest_steps, :user
end
