class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :num_flight
      t.date :date
      t.string :depart
      t.string :from
      t.string :to
      t.string :duration
      t.float :cost
      t.integer :passengers
    end

    create_table :users do |t|
    	t.string :name
      t.string :pass
      t.boolean :admin
    end

    create_table :bookings do |t|
      t.belongs_to :flight, index: true
      t.integer :num_booking
      t.float :total
    end

    create_table :user_bookings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :booking, index: true
    end

    create_table :user_flights do |t|
      t.belongs_to :user, index: true 
      t.belongs_to :flight, index: true
    end
    #crea las tablas restantes
  end
end
