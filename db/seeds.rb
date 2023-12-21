# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(username: "Tajemouti", password: "123456")
User.create(username: "Shah", password: "123456")
User.create(username: "Enoch", password: "123456")
User.create(username: "Wonde", password: "123456")

Doctor.create(name: 'Dr. Benjamin Foster', picture: 'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5789.jpg', speciality: 'Gastroenterologist', address: '777 Elm Street, Riverside')
Doctor.create(name: 'Dr. James Robinson', picture: 'https://img.freepik.com/premium-photo/happy-male-doctor-standing-with-arms-folded-isolated-white-background_171337-77006.jpg', speciality: 'Rheumatologist', address: '888 Walnut Street, Lakeside')
Doctor.create(name: 'Dr. Ethan Campbell', picture: 'https://img.freepik.com/free-photo/portrait-confident-male-doctor_329181-12190.jpg', speciality: 'Nephrologist', address: '999 Pine Street, Hillside')
Doctor.create(name: 'Dr. Sal Hamster', picture: 'https://img.freepik.com/free-photo/young-beautiful-successful-female-doctor-with-stethoscope-portrait_186202-1506.jpg', speciality: 'Hematologist', address: '101 Chestnut Street, Bayview')
Doctor.create(name: 'Dr. Noah White', picture: 'https://img.freepik.com/free-photo/young-medical-student_144627-9948.jpg', speciality: 'Allergist', address: '121 Fir Street, Summit')
Doctor.create(name: 'Dr. Tom Turner', picture: 'https://img.freepik.com/free-photo/young-medical-student_144627-9947.jpg', speciality: 'Cardiologist', address: '111 Oak Street, Cityville')
Doctor.create(name: 'Dr. James Anderson', picture: 'https://thumbs.dreamstime.com/b/confident-doctor-over-white-background-portrait-male-standing-vertical-shot-39366393.jpg', speciality: 'Dermatologist', address: '222 Pine Street, Townsville')
Doctor.create(name: 'Dr. Edward Mitchell', picture: 'https://img.freepik.com/free-photo/portrait-happy-smiling-male-doctor-with-stethoscope_186202-1181.jpg', speciality: 'Ophthalmologist', address: '333 Maple Street, Villageton')
Doctor.create(name: 'Dr. Michael Carter', picture: 'https://img.freepik.com/free-photo/portrait-young-doctor-man_144627-21843.jpg', speciality: 'Endocrinologist', address: '444 Cedar Street, Hamlet City')
Doctor.create(name: 'Dr. Jessica Reynolds', picture: 'https://img.freepik.com/free-psd/doctor-preparing-routine-medical-check_23-2150493277.jpg', speciality: 'Pulmonologist', address: '555 Birch Street, Metropolis')

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 1, doctor_id: 1, city: "New York")
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 1, doctor_id: 2, city: "Tokyo")
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 1, doctor_id: 3, city: "Paris")
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 1, doctor_id: 4, city: "London")
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 1, doctor_id: 5, city: "Berlin")

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 2, doctor_id: 6, city: "Rio de Janeiro")
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 2, doctor_id: 7, city: "Los Angeles")
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 2, doctor_id: 8, city: "Sydney")
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 2, doctor_id: 9, city: "Rome")
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 2, doctor_id: 10, city: "Cairo")

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 3, doctor_id: 1, city: "New York")
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 3, doctor_id: 2, city: "Tokyo")
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 3, doctor_id: 3, city: "Paris")
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 3, doctor_id: 4, city: "London")
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 3, doctor_id: 5, city: "Berlin")

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 4, doctor_id: 6, city: "Rio de Janeiro")
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 4, doctor_id: 7, city: "Los Angeles")
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 4, doctor_id: 8, city: "Sydney")
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 4, doctor_id: 9, city: "Rome")
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 4, doctor_id: 10, city: "Cairo")
