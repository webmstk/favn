require 'rails_helper'

RSpec.describe Question, type: :model do
	
  describe 'validations' do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should validate_presence_of :user_id }
  end

  describe 'association' do
  it { should have_many(:answers).dependent(:destroy) }
  end
end
