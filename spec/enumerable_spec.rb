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
                
                it "comprobando el metodo collect" do
                    expect(@lista.map{|i| i.value.to_s}).to eq([@g_alimentos[5].to_s, @g_alimentos[4].to_s, @g_alimentos[3].to_s, @g_alimentos[2].to_s, @g_alimentos[1].to_s, @g_alimentos[0].to_s])
                    expect(@lista.collect{|i| i.value.to_s}).to eq([@g_alimentos[5].to_s, @g_alimentos[4].to_s, @g_alimentos[3].to_s, @g_alimentos[2].to_s, @g_alimentos[1].to_s, @g_alimentos[0].to_s])
                end
                
                it "comprobando el metodo count" do
                    expect(@lista.count).to eq(6)
                end
                
                it "comprobando el metodo detect" do
                    expect(@lista.detect {|i| i.value.alimento=="Pollo"}).to eq(@lista.cabeza)
                    expect(@lista.find {|i| i.value.alimento=="Huevo frito"}).to eq(@lista.cola)
                end
                
                it "comprobando drop" do
                    expect(@lista.drop(5)).to eq([@lista.cola])
                end
                
                it "comprobando max" do
                    expect(@lista.max).to eq(@lista.cola)
                end
                
                it "comprobando min" do
                    expect(@lista.min).to eq(@lista.cola.next)
                end
                
                it "comprobando sort" do
                    expect(@lista.sort).to eq([@lista.cola.next, @lista.cola.next.next, @lista.cabeza, @lista.cabeza.prev, @lista.cabeza.prev.prev, @lista.cola])
                end
                
            end
            
        end
    
end
