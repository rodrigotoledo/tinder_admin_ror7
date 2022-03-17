require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:occupation) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:avatar) }
  end
end
