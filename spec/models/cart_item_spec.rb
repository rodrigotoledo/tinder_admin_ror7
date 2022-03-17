require 'rails_helper'

RSpec.describe CartItem, type: :model do
  describe 'associations' do
    it { should belong_to(:cart).class_name('Cart') }
    it { should belong_to(:product).class_name('Product') }
  end
end
