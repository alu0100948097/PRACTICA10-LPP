require "spec_helper"

describe Alimentos do
    
    before :each do
        
        @g_alimentos = [
        G_alimentos.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lácteos y helados"),
        G_alimentos.new("Leche vaca", 3.3, 4.8, 3.2, "Huevos, lácteos y helados"),
        G_alimentos.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lácteos y helados"),
        G_alimentos.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados"),
        G_alimentos.new("Ternera", 21.1, 0.0, 3.1, "Carnes y derivados"),
        G_alimentos.new("Pollo", 20.6, 0.0, 5.6, "Carnes y derivados"),
        G_alimentos.new("Bacalao", 17.7, 0.0, 0.4, "Pescados y mariscos"),
        G_alimentos.new("Atun", 21.5, 0.0, 15.5, "Pescados y mariscos"),
        G_alimentos.new("Salmon", 19.9, 0.0, 13.6, "Pescados y mariscos"),
        G_alimentos.new("Aceite de oliva", 0.0, 0.2, 99.6, "Alimentos grasos"),
        G_alimentos.new("Mantequilla", 0.7, 0.0, 83.2, "Alimentos grasos"),
        G_alimentos.new("Chocolate", 5.3, 47.0, 30.0, "Alimentos grasos"),
        G_alimentos.new("Azucar", 0.0, 99.8, 0.0, "Alimentos ricos en carbohidratos"),
        G_alimentos.new("Arroz", 6.8, 77.7, 0.6 ,"Alimentos ricos en carbohidratos"),
        G_alimentos.new("Lentejas", 23.5, 52.0, 1.4, "Alimentos ricos en carbohidratos"),
        G_alimentos.new("Papas", 2.0, 15.4, 0.1, "Alimentos ricos en carbohidratos"),
        G_alimentos.new("Tomate", 1.0, 3.5, 0.2, "Verduras y hortalizas"),
        G_alimentos.new("Cebolla", 1.3, 5.8, 0.3, "Verduras y hortalizas"),
        G_alimentos.new("Calabaza", 1.1, 4.8, 0.1, "Verduras y hortalizas"),
        G_alimentos.new("Manzana", 0.3, 12.4, 0.4, "Frutas",),
        G_alimentos.new("Platanos", 1.2, 21.4, 0.2, "Frutas"),
        G_alimentos.new("Pera", 0.5, 12.7, 0.3, "Frutas"),
        ]
        
    end
    
    context "Existiendo métodos de la clase" do
        
        describe "# Ordenación mediante bucles for" do
            it "Comprobando ordenación con for" do
                expect(@g_alimentos.ordenar_for).to eq([@g_alimentos[9],@g_alimentos[10],@g_alimentos[11],@g_alimentos[12],@g_alimentos[13],@g_alimentos[14],@g_alimentos[0],@g_alimentos[7],@g_alimentos[8],@g_alimentos[3],@g_alimentos[5],@g_alimentos[4],@g_alimentos[20],@g_alimentos[6],@g_alimentos[15],@g_alimentos[2],@g_alimentos[1],@g_alimentos[21],@g_alimentos[19],@g_alimentos[17],@g_alimentos[18],@g_alimentos[16]])
            end
        end
        
        describe "# Ordenación mediante método sort" do
            it "Comprobando ordenación con sort" do
                expect(@g_alimentos.ordenar_sort).to eq([@g_alimentos[9],@g_alimentos[10],@g_alimentos[11],@g_alimentos[12],@g_alimentos[13],@g_alimentos[14],@g_alimentos[0],@g_alimentos[7],@g_alimentos[8],@g_alimentos[3],@g_alimentos[5],@g_alimentos[4],@g_alimentos[20],@g_alimentos[6],@g_alimentos[15],@g_alimentos[2],@g_alimentos[1],@g_alimentos[21],@g_alimentos[19],@g_alimentos[17],@g_alimentos[18],@g_alimentos[16]])
            end
        end
        
    end
    
end
