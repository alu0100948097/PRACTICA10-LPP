require "spec_helper"

describe G_alimentos do
    
    before :each do
        @g_alimentos = G_alimentos.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lácteos y helados")
        @g_alimentos_2 = G_alimentos.new("Leche Vaca", 3.3, 4.8, 3.2, "Huevos, lácteos y helados")
        @g_alimentos_3 = G_alimentos.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lácteos y helados")
        @g_alimentos_4 = G_alimentos.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados")
        @g_alimentos_5 = G_alimentos.new("Ternera", 21.1, 0.0, 6.3, "Carnes y derivados")
        @g_alimentos_6 = G_alimentos.new("Pollo", 20.6, 0.0, 5.6, "Carnes y derivados")
    end
    
    context "Haciendo a la clase Alimentos comparable" do
        
        describe "# Se compara si un alimento es menor que otro" do
            it "Devuelve true si el alimento a la izq es menor al de la derch" do
                expect(@g_alimentos_2 < @g_alimentos).to eq(true)
                expect(@g_alimentos_4 < @g_alimentos_3).to eq(false)
            end
        end
        
        describe "# Se compara si un alimento es menor o igual que otro" do
            it "Devuelve true si el alimento a la izq es menor o igual al de la derch" do
                expect(@g_alimentos_2 <= @g_alimentos). to eq(true)
                expect(@g_alimentos_4 <= @g_alimentos_3). to eq(false)
                expect(@g_alimentos_5 <= @g_alimentos_5). to eq(true)
            end
        end
        
        describe "# Se compara si un alimento es mayor que otro" do
            it "Devuelve true si el alimento a la izq es mayor al de la derch" do
                expect(@g_alimentos > @g_alimentos_2).to eq(true)
                expect(@g_alimentos_6 > @g_alimentos_5). to eq(false)
            end
        end
        
        describe "# Se compara si un alimento es mayor o igual que otro" do
            it "Devuelve true si el alimento a la izq es mayor o igual al de la derch" do
                expect(@g_alimentos >= @g_alimentos_2).to eq(true)
                expect(@g_alimentos_6 >= @g_alimentos_5). to eq(false)
                expect(@g_alimentos_6 >= @g_alimentos_6). to eq(true)
            end
        end
        
        describe "# Se compara si un alimento es igual que otro" do
            it "Devuelve true si el alimento a la izq es igual al de la derch" do
                expect(@g_alimentos == @g_alimentos).to eq(true)
                expect(@g_alimentos == @g_alimentos_6).to eq(false)
            end
        end
        
        describe "# Se compara si un alimento es igual que otro" do
            it "Devuelve true si el alimento a la izq es igual al de la derch" do
                expect(@g_alimentos_3.between?(@g_alimentos_2,@g_alimentos)).to eq(true)
                expect(@g_alimentos_6.between?(@g_alimentos_5,@g_alimentos_4)).to eq(false)
            end
        end
        
    end
    
end
