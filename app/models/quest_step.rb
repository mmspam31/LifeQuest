class QuestStep < ActiveRecord::Base
  belongs_to :quest
  belongs_to :step
  # attr_accessible :title, :body
  accepts_nested_attributes_for :step, :quest
end
