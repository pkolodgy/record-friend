class Track < ActiveRecord::Base
  # Associations
  belongs_to :album
  has_many :tags, as: :taggable

  # Validations
  validates :title, presence: true
end
