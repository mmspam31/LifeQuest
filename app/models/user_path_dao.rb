class UserPathDao < ActiveRecord::Base
  
  def self.q(user_id)
    # Notice how you can, and should, still sanitize params here. 
    query = <<"EOF"
select p.name as path_name, sum(q.reward) as level from users u
  inner join user_quests uq on (uq.user_id = u.id and uq.complete = 't')
  inner join quests q on q.id = uq.quest_id
  inner join quest_paths qp on qp.quest_id=q.id
  inner join paths p on p.id=qp.path_id
where u.id=? 
group by p.name
EOF
    results = self.connection.execute(sanitize_sql([query, user_id]))
    user_paths = results.collect do |result|
      UserPath.new(result["path_name"], result["level"])
    end
    user_paths
  end
end
