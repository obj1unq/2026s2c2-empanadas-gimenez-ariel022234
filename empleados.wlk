//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var saldo = 0

    method sueldo() {
        return sueldo
    }

    method sueldo(nuevoSueldo) {
      sueldo = nuevoSueldo
    }

    method cobrarSueldo() {
        saldo = saldo + sueldo

       
    }

    method gastar(cantidad) {
        saldo = saldo - cantidad
      }


    method dinero() {
      if (saldo <= 0) {
          return 0
      }
      else {
        return saldo
      }
    }

    method deuda() {
      if (saldo <= 0) {
        return saldo * -1
      }
      else {
        return 0
      }
    }



}

object baigorria {
    var precioEmpanada = 15
    var empanadasVendidas = 0
    var sueldoAcumulado = 0



    method vender (numeroAVender) {
        empanadasVendidas = empanadasVendidas + numeroAVender
    }


    method empanadasVendidas() {
      return empanadasVendidas
    } 


    method cobrarSueldo() {
      sueldoAcumulado = sueldoAcumulado + self.sueldo()
      empanadasVendidas = 0
      
    }

    method totalCobrado()  {
      return sueldoAcumulado 
    } 

    

    method sueldo() {
       return self.empanadasVendidas() * precioEmpanada
    } 

  
  
}

object gimenez {
  var fondos = 300000 

  method fondo() {
    return fondos
  }

  method sueldoGalvan(sueldo) {
    galvan.sueldo(sueldo)
  }

  method pagarSueldo(empleado) {
    if (fondos >= empleado.sueldo()) {
      fondos = fondos - empleado.sueldo()
      empleado.cobrarSueldo()
    }
    else {
      self.error("fondos insuficientes" + empleado.sueldo())
    }
    
  }

}