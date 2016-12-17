class RecordCollection < ActiveRecord::Base
  # Associations
  belongs_to :user
  belongs_to :album

  # Validations
  validates :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :user_id, uniqueness: { scope: [:album_id] }
end
