require 'rails_helper'

RSpec.describe Answer, type: :model do
  
  describe 'validations' do
    it { should validate_presence_of :body }
    it { should validate_presence_of :question_id } 
    it { should validate_presence_of :user_id }
  end

  describe 'associations' do
    it { should belong_to :question }
  end
end