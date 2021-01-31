class AddExperienceRangeToCandidates < ActiveRecord::Migration[6.0]
  def change
    add_reference :candidates, :experience_range, null: false, foreign_key: true
  end
end
