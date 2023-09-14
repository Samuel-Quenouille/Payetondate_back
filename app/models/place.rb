class Place < ApplicationRecord
    #belongs_to :user

    validates :title, :description, :price, :category, :address, :zip_code, :city, :borough, presence: true
    #validates :city, format: { with: /\A[a-zA-Z\s]+\z/, message: "ne peut contenir que des lettres et des espaces" }
    validates :zip_code, length: { is: 5 }

end
