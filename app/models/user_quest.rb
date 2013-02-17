class UserQuest < ActiveRecord::Base
  belongs_to :quest
  belongs_to :user
  attr_accessible :complete, :quest, :quest_id, :user, :user_id
end
