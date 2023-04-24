class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_many_attached :images
  belongs_to :user

  validates :images, presence: true
  validates :images, length: { minimum: 1, maximum: 4, message: "は1枚以上4枚以下にしてください" }
  validates :store_name, presence: true
  validates :category_id, numericality: { other_than: 1, message: "を選択してください" }

  def self.search(search)
    if search.present?
      Shop.where('store_name LIKE ? OR menu LIKE ? OR place LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%").where(interesting_store_id: 1)
    else
      Shop.where(interesting_store_id: 1)
    end
  end
end
