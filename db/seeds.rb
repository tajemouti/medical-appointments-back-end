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

Doctor.create(name: 'Dr. Patrick Soon Shiong', picture: 'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5789.jpg', speciality: 'Transplant surgeon', address: '123 Main Street City')
Doctor.create(name: 'Dr. William A. Abdu', picture: 'https://img.freepik.com/premium-photo/happy-male-doctor-standing-with-arms-folded-isolated-white-background_171337-77006.jpg', speciality: 'Spine and orthopedic surgeon', address: '456 Main Street City')
Doctor.create(name: 'Dr. Myles. B. Abbott', picture: 'https://img.freepik.com/free-photo/portrait-confident-male-doctor_329181-12190.jpg', speciality: 'Pediatrician', address: '789 Main Street City')
Doctor.create(name: 'Dr. Fouad. M. Abbas', picture: 'https://img.freepik.com/free-photo/young-beautiful-successful-female-doctor-with-stethoscope-portrait_186202-1506.jpg', speciality: 'Gynecologist and Obstetrician', address: '321 Main Street City')
Doctor.create(name: 'Dr. Khalid Abbed', picture: 'https://img.freepik.com/free-photo/young-medical-student_144627-9948.jpg', speciality: 'Neuro and spine surgeon', address: '654 Main Street City')

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 1, doctor_id: 1, city: New York)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 1, doctor_id: 2, city: Tokyo)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 1, doctor_id: 3, city: Paris)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 1, doctor_id: 4, city: London)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 1, doctor_id: 5, city: Miami)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 2, doctor_id: 1, city: New York)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 2, doctor_id: 2, city: Tokyo)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: , doctor_id: 3, city: Paris)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 2, doctor_id: 4, city: London)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 2, doctor_id: 5, city: Miami)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 3, doctor_id: 1, city: New York)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 3, doctor_id: 2, city: Tokyo)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 3, doctor_id: 3, city: Paris)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 3, doctor_id: 4, city: London)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 3, doctor_id: 5, city: Miami)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 4, doctor_id: 1, city: New York)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 4, doctor_id: 2, city: Tokyo)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 4, doctor_id: 3, city: Paris)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 4, doctor_id: 4, city: London)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 4, doctor_id: 5, city: Miami)
