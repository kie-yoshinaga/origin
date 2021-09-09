class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :birthday, presence: true
  validates :category_id, numericality: { other_than: 1, message: "can't be blank"} 
  

  with_options presence: true do
    validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: "Include both letters and numbers"}
  end

  has_many :movie
  #has_many :comment
  #belongs_to_active_hash :category
end
