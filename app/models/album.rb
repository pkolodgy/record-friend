class Album < ActiveRecord::Base
  # Associations
  has_many :tracks
  has_many :tags, as: :taggable
  belongs_to :artist
  belongs_to :label

  # Validations
  validates :title, :release_year, presence: true
  validates :title, :uniqueness => {:scope => [:artist_id, :label_id, :release_year]}
end
