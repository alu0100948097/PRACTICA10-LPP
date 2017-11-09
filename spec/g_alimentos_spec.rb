require 'prct06/alimentos'

describe G_alimentos do
    
    before :each do
        @g_alimentos = G_alimentos.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lácteos y helados")
        @g_alimentos_2 = G_alimentos.new("Leche Vaca", 3.3, 4.8, 3.2, "Huevos, lácteos y helados")
        @g_alimentos_3 = G_alimentos.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lácteos y helados")
        @g_alimentos_4 = G_alimentos.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados")
        @g_alimentos_5 = G_alimentos.new("Ternera", 21.1, 0.0, 6.3, "Carnes y derivados")
        @g_alimentos_6 = G_alimentos.new("Pollo", 20.6, 0.0, 5.6, "Carnes y derivados")
    end
    
end
