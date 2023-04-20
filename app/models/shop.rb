class Shop < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :store_name, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
end
