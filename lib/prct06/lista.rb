# encoding: utf-8
# Esta clase permite representar listas doblemente enlazadas.
# Su desarrollo ha sido dirigido por pruebas (TDD).
# Se han incluido el mixin Enumerable
#
# Author::    Sergio Ferrera de Diego  (mailto:sergioferrera1296@gmail.com)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby

class List
	
    include Enumerable
    
	attr_reader :cola, :cabeza, :tam
	
    # Método para asignar los datos de la lista
    #
    # @param cola cola de la lista
    # @param cabeza cabeza de la lista
    # @param tam tamaño de la lista
	def initialize
		
	   @cola=nil
	   @cabeza=nil
	   @tam=0
	   
	end
    
    # Método para definir como recorrer los elementos de la lista
    def each
        yield temp = @cabeza
        if tam!=0
            for i in (1 ..tam-1)
                yield temp = temp.prev
            end
        end
    end
    
    # Método para introducir un nuevo elemento en la cola de lista
    #
    # @param valor elemento a introducir
    def introducir_en_cola!(valor)
        
        if(@tam==0)
            @cola=Node.new(valor,nil,nil)
            @cabeza= cola
            
            else
            @cola.prev=Node.new(valor,cola,nil)
            @cola.prev.next= cola
            @cola= cola.prev
            
        end
        
        @tam+=1
        
    end
    
    # Método para introducir un nuevo elemento en la cabeza de lista
    #
    # @param valor elemento a introducir
    def introducir_en_cabeza!(valor)
        
        if(@tam==0)
            @cabeza=Node.new(valor,nil,nil)
            @cola= cabeza
            
            else
            @cabeza.next=Node.new(valor,cola,nil)
            @cabeza.next.prev= cabeza
            @cabeza= cabeza.next
            
        end
        
        @tam+=1
        
    end
    
    # Método para eliminar un elemento de la cola de lista
    def quitar_cola!
        
        temp=@cola
        
        if(tam>0)
            @cola= cola.next
            if cola.nil?
                @cabeza=nil
                else
                @cola.prev=nil
            end
            temp.next=nil
            temp.prev=nil
            @tam-=1
        end
        
        temp
        
    end
    
    # Método para eliminar un elemento de la cabeza de lista
    def quitar_cabeza!
        
        temp=@cabeza
        
        if(tam>0)
            @cabeza= cabeza.prev
            if cabeza.nil?
                @cola=nil
                else
                @cabeza.next=nil
            end
            temp.next=nil
            temp.prev=nil
            @tam-=1
        end
        
        temp
        
    end
    
    # Método para definir la forma en la que mostrar los datos de la lista
    def to_s
        if(tam>0)
            "tamaño:#{tam} contenido:(#{cabeza.value} #{cola.value})"
            else
            "Sin valores almacenados."
        end
    end
    
    # Método para introducir un varios nuevos elementos provenientes de una cadena de caracteres en la cabeza de lista
    #
    # @param cadena de caracteres que contiene los nuevos elementos a introducir
    def introducir_string!(valor)
        
        for num in (0..valor.length-1)
            introducir_en_cabeza!(valor[num])
        end
        
    end
	
end
