class Place < ApplicationRecord
    #belongs_to :user

    validates :title, :description, :price, :category, :address, :zip_code, :city, :borough, presence: true
    validates :zip_code, length: { is: 5 }

end
