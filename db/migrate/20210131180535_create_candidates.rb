class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.integer :external_id
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
