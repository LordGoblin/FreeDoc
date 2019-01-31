
require 'faker'

10.times do
  specialty_random = Specialty.create!(name: Faker::Job.title )
end

10.times do
  city_random = City.create!(name: Faker::Address.city )
end

10.times do
  doctor_random = Doctor.create!(first_name: Faker::Name.first_name ,last_name: Faker::Name.last_name , postal_code: Faker::Address.zip, city_id: rand(1..City.count) )
end

10.times do
  join_specialty_doctor_random = JoinTableSpecialtyDoctor.create!( doctor_id: rand(1..Doctor.count), specialty_id: rand(1..Specialty.count))
end

10.times do
  patient_random = Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name , city_id: rand(1..City.count))
end

10.times do
  appointment_random = Appointment.create!(date:Faker::Date.forward(23) , doctor_id: rand(1..Doctor.count), patient_id: rand(1..Patient.count), city_id: rand(1..City.count))
end
