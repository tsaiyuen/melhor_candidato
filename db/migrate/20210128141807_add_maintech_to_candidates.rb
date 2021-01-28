class AddMaintechToCandidates < ActiveRecord::Migration[6.0]
  def change
    add_column :candidates, :maintech, :string
  end
end
