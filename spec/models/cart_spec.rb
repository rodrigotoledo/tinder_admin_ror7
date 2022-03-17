require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe 'associations' do
    it { should have_many(:cart_items).class_name('CartItem') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:scheduled_at) }
  end
end
