class Technology < ApplicationRecord
  has_and_belongs_to_many :candidates

  validates :name, presence: true
  validates :name, uniqueness: true
end
