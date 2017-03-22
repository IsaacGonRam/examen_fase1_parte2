# Este archivo sirve para crear registros de prueba
flight1 = Flight.create(num_flight: 25, date: "2017-03-01", depart: "08:15:15", from: "Cancun", to: "CDMX", duration: "2:00:00", cost: 2100.00, passengers: 10)

flight2 = Flight.create(num_flight: 33, date: "2017-03-02", depart: "11:33:25", from: "CDMX", to: "Durango", duration: "2:00:00", cost: 3200.00, passengers: 9)

flight3 = Flight.create(num_flight: 45, date: "2017-03-04", depart: "09:45:00", from: "Monterrey", to: "CDMX", duration: "3:00:00", cost: 3000.00, passengers: 15)

flight4 = Flight.create(num_flight: 102, date: "2017-03-04", depart: "10:05:00", from: "Guadalajara", to: "CDMX", duration: "2:00:00", cost: 1500.00, passengers: 8)

flight5 = Flight.create(num_flight: 56, date: "2017-03-05", depart: "06:30:00", from: "CDMX", to: "Toluca", duration: "3:00:00", cost: 1900.00, passengers: 11)

flight6 = Flight.create(num_flight: 2546, date: "2017-03-05", depart: "11:00:00", from: "Monterrey", to: "CDMX", duration: "2:00:00", cost: 2200.00, passengers: 9)

flight7 = Flight.create(num_flight: 302, date: "2017-03-04", depart: "12:10:00", from: "Cancun", to: "CDMX", duration: "3:00:00", cost: 3000.00, passengers: 8)

flight8 = Flight.create(num_flight: 868, date: "2017-03-05", depart: "11:17:17", from: "Guadalajara", to: "CDMX", duration: "2:00:00", cost: 2200.00, passengers: 9)

flight9 = Flight.create(num_flight: 386, date: "2017-03-01", depart: "12:50:00", from: "Cancun", to: "CDMX", duration: "3:00:00", cost: 2500.00, passengers: 8)

flight10 = Flight.create(num_flight: 109, date: "2017-03-02", depart: "07:25:00", from: "CDMX", to: "Durango", duration: "2:00:00", cost: 3500.00, passengers: 8)


user1 = User.create(name: "Isaac", pass: "isaac", admin: true)
# user2 = User.create(name: "Raul", pass: "raul", admin: false)
# user3 = User.create(name: "Liz", pass: "liz", admin: false)

#booking1 = Booking.create(flight_id: flight1.id, num_booking: 456, total: 10000.00)

#userbooking1 = UserBooking.create(user_id: user2.id, booking_id: booking1.id)

#userflight1 = UserFlight.create(user_id: user2.id, flight_id: flight1.id)



