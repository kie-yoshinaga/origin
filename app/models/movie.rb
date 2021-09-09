class Movie < ApplicationRecord
  #extend ActiveHash::Associations::ActiveRecordExtensions

  validates :image, presence: true
  validates :title, presence: true
  validates :detail, presence: true
  validates :directer, presence: true
  validates :starring, presence: true
  validates :category_id, numericality: { other_than: 1, message: "が空欄です"} 
  validates :rate, presence: true

  belongs_to :user
  #belongs_to_active_hash :category

  has_one_attached :image
end
