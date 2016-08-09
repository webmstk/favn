class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  
  validates :title, :body, :user_id, presence: true
end