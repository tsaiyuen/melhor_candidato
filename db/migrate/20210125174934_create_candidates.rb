class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.integer :user
      t.string :city
      t.string :experience
      t.string :technologies

      t.timestamps
    end
  end
end
