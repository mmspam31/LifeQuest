class QuestPath < ActiveRecord::Base
  belongs_to :quest
  belongs_to :path
  # attr_accessible :title, :body
end
