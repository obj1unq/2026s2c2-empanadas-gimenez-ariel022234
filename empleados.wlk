//Escribir aqui los objetos
object galvan {
    const jefe = gimenez
    var sueldo = 15000
    var dinero = 0
    var deuda = 0

    method sueldo() {
        return sueldo
    }

    method sueldo(nuevoSueldo) {
      sueldo = nuevoSueldo
    }

    method cobrarSueldo() {
      if (sueldo >= deuda ) {
        dinero = dinero + self.sueldo() - deuda
        deuda = 0
      
      }
      else {
        dinero = 0
        deuda = deuda + (self.sueldo() - deuda) * -1
      }

       
    }

    method gastar(cantidad) {
        if (dinero >= cantidad) {
          dinero = dinero - cantidad
        }
        else {
            deuda = deuda + (dinero - cantidad) * -1
        }
      }


    method dinero() {
      return dinero
    }

    method deuda() {
      return deuda
    }



}

object baigorria {
    const jefe = gimenez
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
  const empleadoG = galvan
  const empleadoB = baigorria

  method fondo() {
    return fondos
  }

  method sueldoGalvan(sueldo) {
    empleadoG.sueldo(sueldo)
  }

  method pagarSueldo(empleado) {
    fondos = fondos - empleado.sueldo() 
    empleado.cobrarSueldo()
    
  }

}