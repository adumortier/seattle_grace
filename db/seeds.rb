# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
      @hospital1 = Hospital.create!(name: "Grey Sloan Memorial Hospital")
      @hospital2 = Hospital.create!(name: "Pacific Northwest General Hospital")
      @hospital3 = Hospital.create!(name: "New York Hospital")

      @doctor1 = @hospital1.doctors.create!(name: "Meredith Grey", specialty: "General Surgery", university: "Harvard University")
      @doctor2 = @hospital1.doctors.create!(name: "Alex Karev", specialty: "Pediatric Surgery", university: "Johns Hopkins University")
      @doctor3 = @hospital2.doctors.create!(name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University")
      @doctor4 = @hospital3.doctors.create!(name: "Derek Webber", specialty: "Attending Surgeon", university: "University of Pennsylvania")
      
      @patient1  = @doctor1.patients.create!(name: "Katie Bryce", age: 24)
      @patient2  = @doctor2.patients.create!(name: "Denny Duquette", age: 39)
      @patient3  = @doctor1.patients.create!(name: "Rebecca Pope", age: 32)
      @patient4  = @doctor1.patients.create!(name: "Zola Shepherd", age: 2)