class CreateJoinTableCandidatesTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_join_table :candidates, :technologies do |t|
       t.index [:candidate_id, :technology_id]
    end
  end
end
