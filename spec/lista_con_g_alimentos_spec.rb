require 'prct06/lista'
require 'prct06/alimentos'

context "Lista en la que se introducen G_alimentos" do
describe List do
    
    before :each do
        
        @g_alimentos=[]
        @g_alimentos[1] = G_alimentos.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lácteos y helados")
        @g_alimentos[2] = G_alimentos.new("Leche Vaca", 3.3, 4.8, 3.2, "Huevos, lácteos y helados")
        @g_alimentos[3] = G_alimentos.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lácteos y helados")
        @g_alimentos[4] = G_alimentos.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados")
        @g_alimentos[5] = G_alimentos.new("Ternera", 21.1, 0.0, 6.3, "Carnes y derivados")
        @g_alimentos[6] = G_alimentos.new("Pollo", 20.6, 0.0, 5.6, "Carnes y derivados")
        @g_alimentos[7] = G_alimentos.new("Bacalao", 17.7, 0.0, 0.4, "Pescados y mariscos")
        @g_alimentos[8] = G_alimentos.new("Atún", 21.5, 0.0, 15.5, "Pescados y mariscos")
        @g_alimentos[9] = G_alimentos.new("Salmón", 19.9, 0.0, 13.6, "Pescados y mariscos")
        @g_alimentos[10] = G_alimentos.new("Aceite de oliva", 0.0, 0.2, 99.6, "Alimentos grasos")
        @g_alimentos[11] = G_alimentos.new("Mantequilla", 0.7, 0.0, 83.2, "Alimentos grasos")
        @g_alimentos[12] = G_alimentos.new("Chocolate", 5.3, 47.0, 30.0, "Alimentos grasos")
        @g_alimentos[13] = G_alimentos.new("Azúcar", 0.0, 99.8, 0.0, "Alimentos ricos en carbohidratos")
        @g_alimentos[14] = G_alimentos.new("Arroz", 6.8, 77.7, 0.6, "Alimentos ricos en carbohidratos")
        @g_alimentos[15] = G_alimentos.new("Lentejas", 23.5, 52.0, 1.4, "Alimentos ricos en carbohidratos")
        @g_alimentos[16] = G_alimentos.new("Papas", 2.0, 15.4, 0.1, "Alimentos ricos en carbohidratos")
        @g_alimentos[17] = G_alimentos.new("Tomate", 1.0, 3.5, 0.2, "Verduras y Hortalizas")
        @g_alimentos[18] = G_alimentos.new("Cebolla", 1.3, 5.8, 0.3, "Verduras y Hortalizas")
        @g_alimentos[19] = G_alimentos.new("Calabaza", 1.1, 4.8, 0.1, "Verduras y Hortalizas")
        @g_alimentos[20] = G_alimentos.new("Manzana", 0.3, 12.4, 0.4, "Frutas")
        @g_alimentos[21] = G_alimentos.new("Plátanos", 1.2, 21.4, 0.2, "Frutas")
        @g_alimentos[22] = G_alimentos.new("Pera", 0.5, 12.7, 0.3, "Frutas")
        
        @lista_5 = List.new()
        
        @lista_5.introducir_string!(@g_alimentos)
        
        @lista = List.new()
        
        @lista_2 = List.new()
        @lista_2.introducir_en_cola!(@g_alimentos[1])
        @lista_2.introducir_en_cabeza!(@g_alimentos[2])
        
        @lista_3 = List.new()
        @lista_3.introducir_en_cola!(@g_alimentos[1])
        @lista_3.introducir_en_cabeza!(@g_alimentos[2])
        @lista_3.quitar_cabeza!
        
        @lista_4 = List.new()
        @lista_4.introducir_en_cola!(@g_alimentos[1])
        @lista_4.introducir_en_cabeza!(@g_alimentos[2])
        @lista_4.quitar_cola!
        
    end
    
    describe "# datos de una lista con alimentos" do
        
        context "Si se establece cola y cabeza en la lista" do
            it "Cola establecida" do
                expect(@lista_2.cola.value).to eq(@g_alimentos[1])
            end
            
            it "Cabeza establecida" do
                expect(@lista_2.cabeza.value).to eq(@g_alimentos[2])
            end
            
            it "Tamaño de la lista" do
                expect(@lista_2.tam).to eq(2)
            end
        end
        
        context "Si se establece cola y cabeza en la lista pero se quita cabeza despues" do
            it "Cola establecida en un principio" do
                expect(@lista_3.cola.value).to eq(@g_alimentos[1])
            end
            
            it "Cabeza que coincide con la cola" do
                expect(@lista_3.cabeza.value).to eq(@g_alimentos[1])
            end
            
            it "Tamaño de la lista" do
                expect(@lista_3.tam).to eq(1)
            end
        end
        
        context "Si se establece cola y cabeza en la lista pero se quita cola despues" do
            it "Cola que coincide con la cabeza" do
                expect(@lista_4.cola.value).to eq(@g_alimentos[2])
            end
            
            it "Cabeza establecida en un principio" do
                expect(@lista_4.cabeza.value).to eq(@g_alimentos[2])
            end
            
            it "Tamaño de la lista" do
                expect(@lista_4.tam).to eq(1)
            end
        end
        
    end
    
end
end
