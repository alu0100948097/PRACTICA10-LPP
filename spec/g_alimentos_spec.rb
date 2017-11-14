require 'prct06'

describe G_alimentos do
    
    before :each do
        @g_alimentos = G_alimentos.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lácteos y helados")
        @g_alimentos_2 = G_alimentos.new("Leche Vaca", 3.3, 4.8, 3.2, "Huevos, lácteos y helados")
        @g_alimentos_3 = G_alimentos.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lácteos y helados")
        @g_alimentos_4 = G_alimentos.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados")
        @g_alimentos_5 = G_alimentos.new("Ternera", 21.1, 0.0, 6.3, "Carnes y derivados")
        @g_alimentos_6 = G_alimentos.new("Pollo", 20.6, 0.0, 5.6, "Carnes y derivados")
    end
    
    describe "# almacenamiento de grupo de un alimento" do
        context "Existiendo los datos del alimento" do
            it "Se almacena correctamente el grupo del alimento" do
                expect(@g_alimentos.grupo).to eq("Huevos, lácteos y helados")
                expect(@g_alimentos_2.grupo).to eq("Huevos, lácteos y helados")
                expect(@g_alimentos_3.grupo).to eq("Huevos, lácteos y helados")
                expect(@g_alimentos_4.grupo).to eq("Carnes y derivados")
                expect(@g_alimentos_5.grupo).to eq("Carnes y derivados")
                expect(@g_alimentos_6.grupo).to eq("Carnes y derivados")
            end
        end
    end
    
    describe "# comprobaciones en relación a la herencia" do
        context "Realizando una herencia correcta" do
            it "La superclase de G_alimentos es Alimentos" do
                expect(G_alimentos.superclass).to be Alimentos
            end
            
            it "La clase de los objetos es G_alimentos comprobando con class" do
                expect(@g_alimentos.class).to be G_alimentos
                expect(@g_alimentos_2.class).to be G_alimentos
                expect(@g_alimentos_3.class).to be G_alimentos
                expect(@g_alimentos_4.class).to be G_alimentos
                expect(@g_alimentos_5.class).to be G_alimentos
                expect(@g_alimentos_6.class).to be G_alimentos
            end
            
            it "La clase de los objetos es G_alimentos comprobando con is_a?" do
                expect(@g_alimentos.is_a?(G_alimentos)).to be true
                expect(@g_alimentos_2.is_a?(G_alimentos)).to be true
                expect(@g_alimentos_3.is_a?(G_alimentos)).to be true
                expect(@g_alimentos_4.is_a?(G_alimentos)).to be true
                expect(@g_alimentos_5.is_a?(G_alimentos)).to be true
                expect(@g_alimentos_6.is_a?(G_alimentos)).to be true
            end
            
            it "La clase de los objetos es G_alimentos comprobando con instance_of?" do
                expect(@g_alimentos.instance_of?(G_alimentos)).to be true
                expect(@g_alimentos_2.instance_of?(G_alimentos)).to be true
                expect(@g_alimentos_3.instance_of?(G_alimentos)).to be true
                expect(@g_alimentos_4.instance_of?(G_alimentos)).to be true
                expect(@g_alimentos_5.instance_of?(G_alimentos)).to be true
                expect(@g_alimentos_6.instance_of?(G_alimentos)).to be true
            end
            
            it "El tipo de clase es G_alimentos debido a que responde a sus respectivos métodos" do
                expect(@g_alimentos.respond_to?:grupo).to be true
                expect(@g_alimentos.respond_to?(:to_s)).to be true
                expect(@g_alimentos.respond_to?:alimento).to be true
                expect(@g_alimentos.respond_to?:proteinas).to be true
                expect(@g_alimentos.respond_to?:glucidos).to be true
                expect(@g_alimentos.respond_to?:grasas).to be true
                expect(@g_alimentos.respond_to?(:valor_ener)).to be true
                expect(@g_alimentos_2.respond_to?:grupo).to be true
                expect(@g_alimentos_2.respond_to?(:to_s)).to be true
                expect(@g_alimentos_2.respond_to?:alimento).to be true
                expect(@g_alimentos_2.respond_to?:proteinas).to be true
                expect(@g_alimentos_2.respond_to?:glucidos).to be true
                expect(@g_alimentos_2.respond_to?:grasas).to be true
                expect(@g_alimentos_2.respond_to?(:valor_ener)).to be true
                expect(@g_alimentos_3.respond_to?:grupo).to be true
                expect(@g_alimentos_3.respond_to?(:to_s)).to be true
                expect(@g_alimentos_3.respond_to?:alimento).to be true
                expect(@g_alimentos_3.respond_to?:proteinas).to be true
                expect(@g_alimentos_3.respond_to?:glucidos).to be true
                expect(@g_alimentos_3.respond_to?:grasas).to be true
                expect(@g_alimentos_3.respond_to?(:valor_ener)).to be true
                expect(@g_alimentos_4.respond_to?:grupo).to be true
                expect(@g_alimentos_4.respond_to?(:to_s)).to be true
                expect(@g_alimentos_4.respond_to?:alimento).to be true
                expect(@g_alimentos_4.respond_to?:proteinas).to be true
                expect(@g_alimentos_4.respond_to?:glucidos).to be true
                expect(@g_alimentos_4.respond_to?:grasas).to be true
                expect(@g_alimentos_4.respond_to?(:valor_ener)).to be true
                expect(@g_alimentos_5.respond_to?:grupo).to be true
                expect(@g_alimentos_5.respond_to?(:to_s)).to be true
                expect(@g_alimentos_5.respond_to?:alimento).to be true
                expect(@g_alimentos_5.respond_to?:proteinas).to be true
                expect(@g_alimentos_5.respond_to?:glucidos).to be true
                expect(@g_alimentos_5.respond_to?:grasas).to be true
                expect(@g_alimentos_5.respond_to?(:valor_ener)).to be true
                expect(@g_alimentos_6.respond_to?:grupo).to be true
                expect(@g_alimentos_6.respond_to?(:to_s)).to be true
                expect(@g_alimentos_6.respond_to?:alimento).to be true
                expect(@g_alimentos_6.respond_to?:proteinas).to be true
                expect(@g_alimentos_6.respond_to?:glucidos).to be true
                expect(@g_alimentos_6.respond_to?:grasas).to be true
                expect(@g_alimentos_6.respond_to?(:valor_ener)).to be true
            end    
        end
    end
    
end
