class View
	def menu_bienvenida
    puts "Bienvenido a Vuelos Codea"
    puts "--------------------------------------------------"
    puts "1) Reservaciones"
    puts "2) Administrador"
    puts "3) Salir"
    opcion = gets.chomp
	end

  def salir
    puts "Adios, gracias."
  end

#Empieza lo referente al admin*********************
  def login_admin
    array_datos = []
    puts "Bienvenido Administrador"
    puts "--------------------------------------------------"
    puts "Ingrese usuario:"
    array_datos << gets.chomp
    puts "Ingrese contraseña:"
    array_datos << gets.chomp
    array_datos
  end
  def login_mal
    p "El usuario o contraseña pueden estar mal"
  end

  def menu_admin
    puts "Elige una opcion"
    puts "--------------------------------------------------"
    puts "1) Muestra todos los vuelos"
    puts "2) Muestra todas las reservaciones"
    puts "3) Crea un nuevo vuelo"
    puts "4) Salir"
    opcion = gets.chomp
  end

  def mostrar_vuelos
    puts
    puts "Todos los Vuelos"
    puts "*********************"
    Flight.all.each_with_index do |obj, indice|
      puts "#{indice+1}) No Vuelo: #{obj.num_flight}"
      puts "Date: #{obj.date}, Depart: #{obj.depart} UTC From: #{obj.from}, To: #{obj.to}"
      puts "Duration: #{obj.duration}, Cost:#{obj.cost}, Passengers: #{obj.passengers}"
      puts "-------------------------------------------------------------------------------"
    end
  end

  def mostrar_reservaciones
    puts
    puts "Todas las reservaciones"
    puts "*********************"
    Booking.all.each_with_index do |obj, indice|
      puts "#{indice+1}) No de Reservacion: #{obj.num_booking} - Total #{obj.total}"
      puts "-------------------------------------------------------------------------------"
    end
  end

  def crear_vuelo
    nuevo_datos
    puts "Ingresa los siguientes datos"
    puts "--------------------------------"
    puts "Numero de vuelo:"
    nuevo_datos << gets.chomp
    puts "Fecha:"
    nuevo_datos << gets.chomp
    puts "Hora salida"
    nuevo_datos << gets.chomp
    puts "From:"
    nuevo_datos << gets.chomp
    puts "To:"
    nuevo_datos << gets.chomp
    puts "Duracion"
    nuevo_datos << gets.chomp
    puts "Costo:"
    nuevo_datos << gets.chomp
    puts "Pasajeros:"
    nuevo_datos << gets.chomp
    nuevo_datos
  end
  def se_creo
    puts "Se creo nuevo vuelo"
  end

#Termina menu administrador ***********************************************************************
  def primer_bienvenida
    puts "--------------------------------------------------"
    puts "              ¡¡¡Bienvenido!!!                    "
    puts "--------------------------------------------------"
  end

  def bienvenida_reservaciones
    
    puts 
    puts "Que deseas hacer?"
    puts "1) Encuentra tu boleto de avión"
    puts "2) Salir"
    puts
    puts "Selecciona una opción:"
    opcion_reservacion = gets.chomp
  end

  def buscar_vuelo
    puts "Busca los vuelos"
    puts "***********************"
    puts "From:"
    from = gets.chomp
    puts "To:"
    to = gets.chomp
    puts "Date:"
    date = gets.chomp
    puts "Passengers:"
    passengers = gets.chomp.to_i
    array_buscar = [from, to, date, passengers]
  end

  def vuelos_disponibles(objetos)
    puts 
    puts "Vuelos disponibles From: #{objetos[0].from} To: #{objetos[0].to}" 
    puts "---------------------------------------------------------------------"
    objetos.each_with_index do |obj, indice|
      puts "#{indice +1}) No Vuelo: #{obj.num_flight}"
      puts "Date #{obj.date} , Depart: #{obj.depart} UTC From: #{obj.from},"
      puts "To: #{obj.to}, Duration: #{obj.duration}, Precio: #{obj.cost}, Lugares: #{obj.passengers}"
       puts "---------------------------------------------------------------------"
    end
    puts
    puts "Selecciona tu vuelo:"
    vuelo_seleccionado = gets.chomp.to_i
  end

  def reservacion_vuelo(selec)
    puts "-------------------------------------------------------------------------"
    puts "Número de Vuelo Seleccionado: #{selec.num_flight}"
    puts "-------------------------------------------------------------------------"    
    puts "Date: #{selec.date}, Depart: #{selec.depart}"
    puts "From: #{selec.from}, To: #{selec.to}, Duration: #{selec.duration}, Precio: #{selec.cost}"
    puts "-------------------------------------------------------------------------"
    puts
  end

  def datos_pasajeros(index)
    puts "Datos de Persona #{index}:"
    datos = []
    puts "Ingresa tu nombre :"
    datos <<gets.chomp
    puts "Email:"
    datos <<gets.chomp
  end

  def confirmacion
    puts "Realizar reservación: SI / NO"
    res = gets.chomp
  end

  def confirmacion_correcta(datos)
    puts "******************************"
    puts "Reservación correcta"
    puts "******************************"
    puts "El costo total es de $#{datos.total}"
    puts "Y tu ID de reservación es la siguiente #{datos.num_booking}"
  end









 
end


