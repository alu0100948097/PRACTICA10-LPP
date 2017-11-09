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
    
    def to_s
        if(tam>0)
            "tamaño:#{tam} contenido:(#{cabeza.value} #{cola.value})"
            else
            "Sin valores almacenados."
        end
    end
	
end
