class User < ActiveRecord::Base
  # Associations
  has_many :albums, through: :record_collection
  has_many :tags, as: :taggable

  # Validations
  has_secure_password
  validates :password, length: { minimum: 6 }
  validates :name, presence: true
  validates :name, uniqueness: true
end
