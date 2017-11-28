# encoding: utf-8
# Se definen nuevos métodos para la clase Array por defecto
# Su desarrollo ha sido dirigido por pruebas (TDD).
#
# Author::    Sergio Ferrera de Diego  (mailto:sergioferrera1296@gmail.com)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby
class Array
    
    # Método para ordenador por inserción un array mediante bucles for
    def ordenar_for
        ordenado=Array.new
        ordenado << self[0]
        for i in (1..self.length-1)
            for j in (0..ordenado.length-1)
                if self[i]>=ordenado[j]
                    ordenado.insert(j,self[i])
                    break
                end
                if j==ordenado.length-1
                    ordenado << self[i]
                end
            end
        end
        ordenado
    end
    
    # Método para ordenador por inserción un array mediante método each
    def ordenar_each
        ordenado=Array.new
        ordenado << self[0]
        self.drop(1).each do |x|
            ordenado.each_with_index do |y,i|
                if x>=y
                    ordenado.insert(i,x)
                    break
                end
                if i==ordenado.length-1
                    ordenado << x
                    break
                end
            end
        end
        ordenado
    end
    
end
