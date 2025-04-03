import objetos.*
import personas.*

object bolichito{
    var objetoMostrador = placa
    var objetoVidriera = muñeco

    method cambiarMostrador(objetoMostradorNuevo){
        objetoMostrador = objetoMostradorNuevo
    }

    method cambiarVidriera(objetoVidrieraNuevo){
        objetoVidriera = objetoVidrieraNuevo
    }

    method esBrillante(){
        return objetoMostrador.material().esBrillante() && 
        objetoVidriera.material().esBrillante()
    }

    method esMonocromatico(){
        return objetoMostrador.color() == objetoVidriera.color()
    }

    method estaEquilibrado(){
        return objetoMostrador.peso() > objetoVidriera.peso()
    }

    method objetoDeColor_(color){
        return objetoMostrador.color() == color || 
        objetoVidriera.color() == color
    }

    method puedeMejorar(){
        return !self.estaEquilibrado() || self.esMonocromatico()
    }

    method ofrecerA_(persona){
        return persona.leGusta(objetoMostrador) ||
        persona.leGusta(objetoVidriera)
    }
}