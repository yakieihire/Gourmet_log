class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_many_attached :images
  belongs_to :user

  validates :images, presence: true
  validates :store_name, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
end
