class InterestingStore < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '気になるお店' },
  ]
  include ActiveHash::Associations
  has_many :shops
end