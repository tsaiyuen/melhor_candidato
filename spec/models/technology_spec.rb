require 'rails_helper'

RSpec.describe Technology, type: :model do
  it "must have a name" do
    technology = build(:technology, name: nil)
    
    expect(technology).to_not be_valid
  end

end
