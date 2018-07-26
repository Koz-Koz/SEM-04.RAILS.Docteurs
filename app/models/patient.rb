class Patient < ApplicationRecord
	 has_many :appointments
     has_many :doctors, through: :appointments   # au pluriel relation N to N indirecte
end
