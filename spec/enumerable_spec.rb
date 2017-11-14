require 'prct06'

describe List do
    
        before :each do
        
            @g_alimentos=[]
            @g_alimentos[0] = G_alimentos.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lácteos y helados") #valor_ener 231.9
            @g_alimentos[1] = G_alimentos.new("Leche Vaca", 3.3, 4.8, 3.2, "Huevos, lácteos y helados") #valor_ener 61.2
            @g_alimentos[2] = G_alimentos.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lácteos y helados") #valor_ener 69
            @g_alimentos[3] = G_alimentos.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados") #valor_ener 142.7
            @g_alimentos[4] = G_alimentos.new("Ternera", 21.1, 0.0, 6.3, "Carnes y derivados") #valor_ener 141.1
            @g_alimentos[5] = G_alimentos.new("Pollo", 20.6, 0.0, 5.6, "Carnes y derivados") #valor_ener 132.8
        
            @lista = List.new()
            @lista.introducir_string!(@g_alimentos)
            
            @lista_2 = List.new()
            
        
        end
        
        context "Haciendo a la lista enumerable" do
            
            describe "# Comprueba cada elemento de la lista" do
                
                it "comprobando el metodo all?" do
                    expect(@lista.all?).to eq(true)
                    expect(@lista_2.all?).to eq(false)
                end
                
                it "comprobando el metodo any?" do
                    expect(@lista.any?).to eq(true)
                    expect(@lista_2.any?).to eq(false)
                end 
                
            end
            
        end
    
end
