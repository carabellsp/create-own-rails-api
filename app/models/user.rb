class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :posts, through: :comments, dependent: :destroy
  has_many :authors, through: :posts, dependent: :destroy

  validates :name, uniqueness: { case_sensitive: false }
end
