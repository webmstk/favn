class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy
  
  validates :title, :body, :user_id, presence: true
end