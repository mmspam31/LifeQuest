class UserPath < ActiveRecord::Base
  # attr_accessor :user, :path, :level
  def self.q(user_id)
    # Notice how you can, and should, still sanitize params here. 
    query = "select u.id, u.email, p.name from users u inner join user_quests uq on (uq.user_id = u.id and uq.complete = 't') inner join quests q on q.id = uq.quest_id inner join quest_paths qp on qp.quest_id=q.id inner join paths p on p.id=qp.path_id where u.id=?"
    self.connection.execute(sanitize_sql([query, user_id]))
  end
end
