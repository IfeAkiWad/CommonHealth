# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Review.destroy_all
# Doctor.destroy_all
# User.destroy_all

Doctor.create(name: "Ihuoma O. Chukwueke, MD", specialty: "Family Medicine", location: "Los Angeles, California", insurance_accepted: "Kaiser Foundation")
Doctor.create(name: "Tuwanda L. Williamson, MD", specialty: "Cardiology", location: "Atlanta, Georgia", insurance_accepted: "Anthem")
Doctor.create(name: "Marsha E Gorens, MD", specialty: "Oncology", location: "New York, New York", insurance_accepted: "Cigna Health")
Doctor.create(name: "Edidiong Kaminska, MD", specialty: "Neurology", location: "Atlanta, Georgia", insurance_accepted:"Kaiser Permanente")
Doctor.create(name: "Arof Howard, MD", specialty: "Obstretics and Gynecology", location: "Houston, Texas", insurance_accepted: "Cigna")
Doctor.create(name: "Patricia Boatwright, MD", specialty: "Pathology", location: "Raleigh, North Carolina", insurance_accepted: "Blue Cross Blue Shield of North Carolina")
Doctor.create(name: "Adam J. Black, MD", specialty: "Ophthamology", location: "Los Angeles, California", insurance_accepted: "Molina Health Care")
Doctor.create(name: "Erin Livingston, MD", specialty: "Family Medicine", location: "Atlanta, Georgia", insurance_accepted: "United Healthcare")
Doctor.create(name: "Clyde W. Yancy, MD", specialty: "Obstretics and Gynecology", location: "New York, New York", insurance_accepted: "Aetna")
Doctor.create(name: "Adam Milam, MD", specialty: "Cardiology", location: "Dallas, Texas", insurance_accepted: "Blue Cross Blue Shield")
Doctor.create(name: "Stephen T. Owen, MD", specialty: "Family Medicine", location: "Dallas, Texas", insurance_accepted: "Aetna")
Doctor.create(name: "Keith Black, MD", specialty: "Oncology", location: "Oakland, California", insurance_accepted: "Oscar Health Plan")
Doctor.create(name: "Tracy M. Brown, MD", specialty: "Obstretics and Gynecology", location: "Boston, Massachusetts", insurance_accepted: "Blue Cross Blue Shield of Massachusetts")
Doctor.create(name: "Olubowale A. Ogunkunle, MD", specialty: "Cardiology", location: "Atlanta, Georgia", insurance_accepted: "Anthem Blue Cross Blue Shield of Georgia")
Doctor.create(name: "Tamajah M. Jordan, MD", specialty: "Family Medicine", location: "Chicago, Illinois", insurance_accepted: "Molina Health Care")
Doctor.create(name: "Alicia Smith, MD", specialty: "Pediatrics", location: "Chicago, Illinois", insurance_accepted: "Blue Cross Blue Shield")

User.create(username: "LanaJack", name: 'Alana Jackson', email: "Alana@Jackson.com", password: "georgiaPeach")
User.create(username: "BigPete", name: 'Peter Howard', email: "Peter@Howard.com", password: "GrandpaofFOUR")
User.create(username: "OchoCinco", name: 'Chad Johnson', email: "Chad@Johnson.com", password: "feb29baby")
User.create(username: "fancyTiff", name: 'Tiffany Stewart', email: "Tiffany@Stewart.com", password: "ATLshawty")
User.create(username: "MrsGriffin", name: 'Marie Griffin', email: "Marie@Griffin.com", password: "UptownBaby")
