class User < ApplicationRecord
	has_many :places

	validates :email, 
    	presence: true,
    	uniqueness: true,
    	format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Entrez un email valide" }

	validates :password,
		presence: true,
		length: { in: 6..20 }

	# Il faut ajouter les deux modules commençant par jwt
	devise :database_authenticatable, :registerable,
	:jwt_authenticatable,
	jwt_revocation_strategy: JwtDenylist
end
