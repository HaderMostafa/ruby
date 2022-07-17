class Product < ApplicationRecord
  belongs_to :admin
  has_one_attached :image

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :admin_id, presence: true
end
