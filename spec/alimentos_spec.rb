require "spec_helper"

describe Alimentos do

  before :each do
    @alimentos = Alimentos.new("Huevo frito", 14.1, 0.0, 19.5)
    @alimentos_2 = Alimentos.new("Leche Vaca", 3.3, 4.8, 3.2)
    @alimentos_3 = Alimentos.new("Yogurt", 3.8, 4.9, 3.8)
    @alimentos_4 = Alimentos.new("Cerdo", 21.5, 0.0, 6.3)
    @alimentos_5 = Alimentos.new("Ternera", 21.1, 0.0, 6.3)
    @alimentos_6 = Alimentos.new("Pollo", 20.6, 0.0, 5.6)
  end
  
  describe "# almacenamiento de datos de un alimento" do
  
        context "Existiendo los datos del alimento" do
		
            it "Se almacena correctamente el nombre del alimento" do
                expect(@alimentos.alimento).to eq("Huevo frito")
                expect(@alimentos_2.alimento).to eq("Leche Vaca")
                expect(@alimentos_3.alimento).to eq("Yogurt")
                expect(@alimentos_4.alimento).to eq("Cerdo") 
                expect(@alimentos_5.alimento).to eq("Ternera") 
                expect(@alimentos_6.alimento).to eq("Pollo") 
            end
        
            it "Se almacena correctamente las proteinas del alimento" do
                expect(@alimentos.proteinas).to eq(14.1)
                expect(@alimentos_2.proteinas).to eq(3.3)
                expect(@alimentos_3.proteinas).to eq(3.8)
                expect(@alimentos_4.proteinas).to eq(21.5)
                expect(@alimentos_5.proteinas).to eq(21.1)
                expect(@alimentos_6.proteinas).to eq(20.6)
            end
        
            it "Se almacena correctamente los glucidos del alimento" do
                expect(@alimentos.glucidos).to eq(0.0) 
                expect(@alimentos_2.glucidos).to eq(4.8)
                expect(@alimentos_3.glucidos).to eq(4.9)
                expect(@alimentos_4.glucidos).to eq(0.0)
                expect(@alimentos_5.glucidos).to eq(0.0)
                expect(@alimentos_6.glucidos).to eq(0.0)
            end
        
            it "Se almacena correctamente las grasas del alimento" do
                expect(@alimentos.grasas).to eq(19.5)
                expect(@alimentos_2.grasas).to eq(3.2)
                expect(@alimentos_3.grasas).to eq(3.8)
                expect(@alimentos_4.grasas).to eq(6.3)
                expect(@alimentos_5.grasas).to eq(6.3)
                expect(@alimentos_6.grasas).to eq(5.6)
            end
        end
    end
	
	context "Existiendo métodos de la clase" do
	
        describe "# visualización de datos de un alimento" do
            it "Se visualizan correctamente los datos del alimento" do
                expect(@alimentos.to_s).to eq("(Huevo frito, 14.1, 0.0, 19.5)")
                expect(@alimentos_2.to_s).to eq("(Leche Vaca, 3.3, 4.8, 3.2)")
                expect(@alimentos_3.to_s).to eq("(Yogurt, 3.8, 4.9, 3.8)")
                expect(@alimentos_4.to_s).to eq("(Cerdo, 21.5, 0.0, 6.3)")
                expect(@alimentos_5.to_s).to eq("(Ternera, 21.1, 0.0, 6.3)")
                expect(@alimentos_6.to_s).to eq("(Pollo, 20.6, 0.0, 5.6)")
            end
        end
		
		describe "# valor energetico del alimento" do
            it "Se calcula correctamente valor_ener" do
                expect(@alimentos.valor_ener).to eq(231.9)
                expect(@alimentos_2.valor_ener).to eq(61.2)
                expect(@alimentos_3.valor_ener).to eq(69.0)
                expect(@alimentos_4.valor_ener).to eq(142.7)
                expect(@alimentos_5.valor_ener).to eq(141.1)
                expect(@alimentos_6.valor_ener).to eq(132.8)
            end
        end
    end

end
