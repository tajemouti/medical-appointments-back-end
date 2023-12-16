# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(username: "Ajrass Tajemouti", password: "123456")
User.create(username: "Shah Zaman", password: "123456")
User.create(username: "Bettenoch", password: "123456")
User.create(username: "Wonde", password: "123456")

Doctor.create(name: 'Dr. Patrick Soon Shiong', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world1.png', speciality: 'Transplant surgeon', address: '123 Main Street City')
Doctor.create(name: 'Dr. William A. Abdu', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world2.png', speciality: 'Spine and orthopedic surgeon', address: '456 Main Street City')
Doctor.create(name: 'Dr. Myles. B. Abbott', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world3.png', speciality: 'Pediatrician', address: '789 Main Street City')
Doctor.create(name: 'Dr. Fouad. M. Abbas', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world4.png', speciality: 'Gynecologist and Obstetrician', address: '321 Main Street City')
Doctor.create(name: 'Dr. Khalid Abbed', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world5.jpg', speciality: 'Neuro and spine surgeon', address: '654 Main Street City')
Doctor.create(name: 'Dr. Naresh Trehan', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world6.png', speciality: 'Cardiovascular and cardiothoracic surgeon', address: '987 Main Street City')
Doctor.create(name: 'Dr. Arthur Reese Albright', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world7.png', speciality: 'Psychiatrist', address: '147 Main Street City')
Doctor.create(name: 'Dr. Corrie T.M Anderson', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world8.png', speciality: 'Anesthesiologist', address: '258 Main Street City')
Doctor.create(name: 'Dr. Mark. F. Aaron', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world9.png', speciality: 'Cardiologist', address: '369 Main Street City')
Doctor.create(name: 'Dr. Sudhansu Bhattacharyya', picture: 'https://static.javatpoint.com/top10-technologies/images/top-10-doctors-in-the-world10.png', speciality: 'Cardio surgeon', address: '159 Main Street City')

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 1, doctor_id: 1)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 1, doctor_id: 2)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 1, doctor_id: 3)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 1, doctor_id: 4)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 1, doctor_id: 5)
Appointment.create(appointment_time: DateTime.now + 15.day, user_id: 1, doctor_id: 6)
Appointment.create(appointment_time: DateTime.now + 16.day, user_id: 1, doctor_id: 7)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 2, doctor_id: 1)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 2, doctor_id: 2)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 2, doctor_id: 3)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 2, doctor_id: 4)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 2, doctor_id: 5)
Appointment.create(appointment_time: DateTime.now + 15.day, user_id: 2, doctor_id: 6)
Appointment.create(appointment_time: DateTime.now + 16.day, user_id: 2, doctor_id: 7)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 3, doctor_id: 1)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 3, doctor_id: 2)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 3, doctor_id: 3)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 3, doctor_id: 4)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 3, doctor_id: 5)
Appointment.create(appointment_time: DateTime.now + 15.day, user_id: 3, doctor_id: 6)
Appointment.create(appointment_time: DateTime.now + 16.day, user_id: 3, doctor_id: 7)

Appointment.create(appointment_time: DateTime.now + 10.day, user_id: 4, doctor_id: 1)
Appointment.create(appointment_time: DateTime.now + 11.day, user_id: 4, doctor_id: 2)
Appointment.create(appointment_time: DateTime.now + 12.day, user_id: 4, doctor_id: 3)
Appointment.create(appointment_time: DateTime.now + 13.day, user_id: 4, doctor_id: 4)
Appointment.create(appointment_time: DateTime.now + 14.day, user_id: 4, doctor_id: 5)
Appointment.create(appointment_time: DateTime.now + 15.day, user_id: 4, doctor_id: 6)
Appointment.create(appointment_time: DateTime.now + 16.day, user_id: 4, doctor_id: 7)

