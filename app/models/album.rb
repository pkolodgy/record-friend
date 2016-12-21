class Album < ActiveRecord::Base
  # Associations
  has_many :tracks
  has_many :tags, as: :taggable
  has_many :record_collections
  has_many :ratings, through: :record_collections
  has_many :users, through: :record_collections
  belongs_to :artist
  belongs_to :label

  # Validations
  validates :title, :release_year, presence: true
  validates :title, uniqueness: { scope: [:artist_id, :label_id, :release_year]}
end
