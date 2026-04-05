//Escribir aqui los objetos
object galvan {
    const jefe = gimenez
    var sueldo = 15000

    method sueldo() {
        return sueldo
    }

    method sueldo(nuevoSueldo) {
      sueldo = nuevoSueldo
    }

}

object baigorria {
    const jefe = gimenez
    var precioEmpanada = 15
    var empanadasVendidas = 0
    var sueldoAcumulado = 0

    method totalCobrado() {
        return self.sueldoAcumulado()
    }

    method sueldoAcumulado() {
      sueldoAcumulado = sueldoAcumulado + self.sueldo()
    }

    method venderEmpanada (numeroAVender) {
        empanadasVendidas = empanadasVendidas + numeroAVender
    }


    method empanadasVendidas() {
      return empanadasVendidas
    } 


    method sueldo() {
       return self.empanadasVendidas() * precioEmpanada
    } 

  
  
}

object gimenez {
  var fondos = 300000 
  const empleadoG = galvan
  const empleadoB = baigorria

  method fondos() {
    return fondos
  }

  method sueldoGalvan(sueldo) {
    empleadoG.sueldo(sueldo)
  }

  method pagarA(empleado) {
    fondos = fondos - empleado.sueldo() 
    
  }

}