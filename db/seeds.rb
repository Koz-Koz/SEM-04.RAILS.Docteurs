require 'faker'

# créer 5 docteurs

5.times do
 doctor = Doctor.create(firstname: Faker::Name.first_name,
            lastname: Faker::Name.last_name,
            speciality: Faker::Job.field,
            postalcode: Faker::Address.zip)
end

# créer 10 patients

10.times do
 patient = Patient.create(firstname: Faker::Name.first_name,lastname: Faker::Name.last_name)
end

# créer 15 appoitments

15.times do
 appoitment = Appoitment.create(date: Faker::Date.forward(23),
 				doctor_id: rand((Doctor.first.id)..(Doctor.last.id)),          # random = aléatoire
 				patient_id: rand((Patient.first.id)..(Patient.last.id)))                       
end