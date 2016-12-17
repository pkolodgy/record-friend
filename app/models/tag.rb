class Tag < ActiveRecord::Base
  # Associations
  belongs_to :user
  belongs_to :taggable, polymorphic: true

  # Validations
  validates :name, presence: true
  validates :name, uniqueness: true
end
