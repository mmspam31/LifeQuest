class QuestStep < ActiveRecord::Base
  belongs_to :quest
  belongs_to :step
  # attr_accessible :title, :body
end
