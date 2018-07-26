class Doctor < ApplicationRecord
	has_many :appointments
    has_many :patients, through: :appointments     # au pluriel relation N to N indirecte
end
