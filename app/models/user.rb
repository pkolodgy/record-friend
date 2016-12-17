class User < ActiveRecord::Base
  # Associations
  has_many :record_collections
  has_many :albums, through: :record_collections
  has_many :tags

  # Validations
  has_secure_password
  validates :password, length: { minimum: 6 }
  validates :username, presence: true
  validates :username, uniqueness: true
end
