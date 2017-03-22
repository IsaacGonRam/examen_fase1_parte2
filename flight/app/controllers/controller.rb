class Controller 
  def initialize(args)
    @view = View.new
    menu
  end

  def menu
    opcion = @view.menu_bienvenida
    if opcion == "1"
      menu_reservaciones
    elsif opcion == "2"
      menu_admin
    else
      @view.salir
    end
  end

#Empieza lo referente al admin*********************
  def menu_admin
    opcion = "1"
    datos_login = @view.login_admin
    usuario = User.find_by(name: datos_login[0])
    if usuario == nil
      @view.login_mal
      menu
    elsif usuario.name == datos_login[0] && usuario.pass == datos_login[1] && usuario.admin == true
      while opcion == "1" || opcion == "2" || opcion == "3"
        opcion = @view.menu_admin
        if opcion == "1"
          @view.mostrar_vuelos
        elsif opcion == "2"
          @view.mostrar_reservaciones
        elsif opcion == "3"
          crear_vuelo
        else      
          opcion = "4"
        end
      end
    end
    @view.salir
  end

  def crear_vuelo
    crear = @view.crear_vuelo
    Flight.create(num_flight: crear[0], date: crear[1], depart: crear[2], from: crear[3], to: crear[4], duration: crear[5], cost: crear[6], passengers: crear[7])
    @view.se_creo
  end

#Termina menu administrador ***********************************************************************

  def menu_reservaciones
    opcion = "1"
    @view.primer_bienvenida
    while opcion == "1"
      opcion = @view.bienvenida_reservaciones
      if opcion == "1"
        buscar_vuelo
      else 
        @view.salir
      
      end
    end
  end

  def buscar_vuelo
      user_vuelo = @view.buscar_vuelo
      no_pasajeros = user_vuelo[3]
      vuelos = Flight.where(from: user_vuelo[0], to: user_vuelo[1], date: user_vuelo[2]).where("passengers > ?", user_vuelo[3])
      seleccion_vuelo = @view.vuelos_disponibles(vuelos)
      seleccionado =  vuelos[seleccion_vuelo -1] 
      @view.reservacion_vuelo(seleccionado)   
      for i in 1..no_pasajeros
        datos_usuarios = @view.datos_pasajeros(i)
        usuarios = User.create(name: datos_usuarios[0], pass: datos_usuarios[1], admin: false)
        UserFlight.create(user_id: usuarios.id, flight_id: seleccionado.id)
      end
      total = seleccionado.cost * no_pasajeros
      si_no_reservacion = @view.confirmacion
      confirmacion(si_no_reservacion, seleccionado, total, no_pasajeros)
  end

  def confirmacion(respuesta, seleccionado, total, no_pasajeros)
    if respuesta == "SI"
      aleatorio = rand(400)
      nueva = Booking.create(flight_id: seleccionado.id, num_booking: aleatorio, total: total)
    end
    crear = UserFlight.where(flight_id: seleccionado.id).all
    crear.each_with_index do |obj, indice|  
      otra = UserBooking.create(user_id: obj.user_id, booking_id: nueva.id)
    end
    lugares = seleccionado.passengers - no_pasajeros
    seleccionado.passengers = lugares
    seleccionado.save
    @view.confirmacion_correcta(nueva)
  end

end



