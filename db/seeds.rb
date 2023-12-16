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

Doctor.create(name: 'Dr. Patrick Soon Shiong', picture: 'https://drive.google.com/file/d/1R6Aoue9_MRJKk8noMdjVaWP3HUy_sEMe/view?usp=sharing', speciality: 'Transplant surgeon', address: '123 Main Street City')

Doctor.create(name: 'Dr. William A. Abdu', picture: 'https://drive.google.com/file/d/1ePeL6c2umJ7cN6SWAEz1cBOW_iNzyFD4/view?usp=sharing', speciality: 'Spine and orthopedic surgeon', address: '456 Main Street City')

Doctor.create(name: 'Dr. Myles. B. Abbott', picture: 'https://drive.google.com/file/d/1ALfHTda0fTXSzLUtk-RAUnpp__XlXhQ9/view?usp=sharing', speciality: 'Pediatrician', address: '789 Main Street City')

Doctor.create(name: 'Dr. Fouad. M. Abbas', picture: 'https://drive.google.com/file/d/1qUKD-vMTqKCUxjdBY1irWnFLRQHdK2f-/view?usp=sharing', speciality: 'Gynecologist and Obstetrician', address: '321 Main Street City')

Doctor.create(name: 'Dr. Khalid Abbed', picture: 'https://drive.google.com/file/d/1Bw2Blp4jc9Paq_w8DlNz8GhAQGAmity8/view?usp=sharing', speciality: 'Neuro and spine surgeon', address: '654 Main Street City')


Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 1, doctor_id: 1)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 1, doctor_id: 2)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 1, doctor_id: 3)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 1, doctor_id: 4)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 1, doctor_id: 5)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 2, doctor_id: 1)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 2, doctor_id: 2)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 2, doctor_id: 3)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 2, doctor_id: 4)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 2, doctor_id: 5)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 3, doctor_id: 1)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 3, doctor_id: 2)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 3, doctor_id: 3)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 3, doctor_id: 4)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 3, doctor_id: 5)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 4, doctor_id: 1)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 4, doctor_id: 2)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 4, doctor_id: 3)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 4, doctor_id: 4)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 4, doctor_id: 5)
