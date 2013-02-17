class Quest < ActiveRecord::Base
  attr_accessible :description, :name, :reward, :steps_attributes, :path_ids
  has_many :quest_steps, :dependent => :destroy
  has_many :steps, :through => :quest_steps
  has_many :quest_paths, :dependent => :destroy
  has_many :paths, :through => :quest_paths
  accepts_nested_attributes_for :steps, :paths, :allow_destroy => true

  def path_names_joined_by_commas()
    return "" unless paths 
    path_names = paths.collect {|path| path.name}
    path_names.join(", ")
  end
end