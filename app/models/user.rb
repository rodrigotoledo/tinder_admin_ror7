class User < ApplicationRecord
  validates :first_name, :last_name, :occupation, :age, :avatar, presence: true
end
