require 'prct06/nodo'

class List
	
	attr_reader :cola, :cabeza, :tam
	
	def initialize
		
	   @cola=nil
	   @cabeza=nil
	   @tam=0
	   
	end
    
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
    
	
end
