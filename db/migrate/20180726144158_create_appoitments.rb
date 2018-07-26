class CreateAppoitments < ActiveRecord::Migration[5.2] 

# Exécuter une mgration pour générer les trois tableaux

  def change

      create_table :doctors do |t|      		# Créer tableau "doctors"
          t.string :firstname
          t.string :lastname
          t.string :speciality
         t.integer :postalcode
	end

      create_table :patients do |t| 			# Créer tableau "patients"
		  t.string :firstname
		  t.string :lastname
	end
    
      create_table :appoitments do |t| 			# Créer tableau "appoitements"
        t.datetime :date
      t.belongs_to :patient, index: true        # Création patient_id
      t.belongs_to :doctor, index: true         # Création doctor_id
    end
  end
end


