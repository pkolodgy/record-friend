class Artist < ActiveRecord::Base
  # Associations
  has_many :albums
  has_many :labels, through: :albums
  has_many :tags, as: :taggable

  # Validations
  validates :name, presence: true
  validates :name, uniqueness: true
end
