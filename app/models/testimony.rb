class Testimony < ApplicationRecord
    validates :first_name, :age, :description, presence: true
end
