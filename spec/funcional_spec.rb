require 'prct06'

describe Alimentos do

  before :each do
    yogurt=[]
    yogurt<<[6.1 , 6.6 , 6.3 , 6.3 , 6.1 , 6.9 , 6.8 , 6.5 , 6.4 , 6.9 , 6.8 , 6.5 , 6.3 , 6.2 , 6.7 , 6.2 , 5.9 , 5.8 , 5.8 , 5.8 , 5.8 , 5.8 , 5.9 , 6.2 , 6.4]
    yogurt<<[4.9 , 4.9 , 5.2 , 5.8 , 6.5 , 7.0 , 7.2 , 7.3 , 7.3 , 6.6 , 6.2 , 6.1 , 6.0 , 6.1 , 5.9 , 5.9 , 5.9 , 5.9 , 5.8 , 5.8 , 5.5 , 5.5 , 5.6 , 5.9 , 5.9]
    @yogurt = Alimentos.new("Yogurt", 3.8, 4.9, 3.8)
    @yogurt.g=yogurt
    glucosa=[]
    glucosa<<[4.9 , 5.3 , 5.9 , 6.7 , 7.2 , 7.6 , 8.0 , 8.2 , 8.2 , 8.4 , 8.3 , 8.3 , 8.0 , 7.5 , 7.1 , 6.8 , 6.8 , 6.9 , 6.8 , 6.3 , 6.2 , 6.3 , 6.2 , 6.3 , 6.1]
    glucosa<<[6.3 , 5.4 , 5.6 , 5.7 , 6.5 , 7.4 , 7.9 , 7.4 , 7.7 , 7.9 , 7.9 , 7.8 , 7.8 , 7.8 , 8.0 , 8.5 , 9.4 , 10.8 , 10.5 , 9.1 , 8.9 , 8.3 , 7.7 , 7.6 , 7.5]
    @glucosa = Alimentos.new("Glucosa", 0, 99.8, 0)
    @glucosa.g=glucosa 
  end
  
  describe "# almacenamiento de datos de un alimento" do
      
      context "Existiendo los datos del alimento" do
          
          it "Se almacena correctamente el nombre del alimento" do
              expect(@yogurt.alimento).to eq("Yogurt")
              expect(@glucosa.alimento).to eq("Glucosa")
          end
          
          it "Se almacena correctamente las proteinas del alimento" do
              expect(@yogurt.proteinas).to eq(3.8)
              expect(@glucosa.proteinas).to eq(0)
          end
          
          it "Se almacena correctamente los glucidos del alimento" do
              expect(@yogurt.glucidos).to eq(4.9)
              expect(@glucosa.glucidos).to eq(99.8)
          end
          
          it "Se almacena correctamente las grasas del alimento" do
              expect(@yogurt.grasas).to eq(3.8)
              expect(@glucosa.grasas).to eq(0)
          end
          
          it "Se almacena correctamente las mediciones de los individuos" do
              expect(@yogurt.g).to eq([[6.1 , 6.6 , 6.3 , 6.3 , 6.1 , 6.9 , 6.8 , 6.5 , 6.4 , 6.9 , 6.8 , 6.5 , 6.3 , 6.2 , 6.7 , 6.2 , 5.9 , 5.8 , 5.8 , 5.8 , 5.8 , 5.8 , 5.9 , 6.2 , 6.4],[4.9 , 4.9 , 5.2 , 5.8 , 6.5 , 7.0 , 7.2 , 7.3 , 7.3 , 6.6 , 6.2 , 6.1 , 6.0 , 6.1 , 5.9 , 5.9 , 5.9 , 5.9 , 5.8 , 5.8 , 5.5 , 5.5 , 5.6 , 5.9 , 5.9]])
              expect(@glucosa.g).to eq([[4.9 , 5.3 , 5.9 , 6.7 , 7.2 , 7.6 , 8.0 , 8.2 , 8.2 , 8.4 , 8.3 , 8.3 , 8.0 , 7.5 , 7.1 , 6.8 , 6.8 , 6.9 , 6.8 , 6.3 , 6.2 , 6.3 , 6.2 , 6.3 , 6.1],[6.3 , 5.4 , 5.6 , 5.7 , 6.5 , 7.4 , 7.9 , 7.4 , 7.7 , 7.9 , 7.9 , 7.8 , 7.8 , 7.8 , 8.0 , 8.5 , 9.4 , 10.8 , 10.5 , 9.1 , 8.9 , 8.3 , 7.7 , 7.6 , 7.5]])
          end
      end
  end
  
  describe "# almacenamiento de datos de un alimento" do
      
      context "Existiendo los datos del alimento" do
          
          it "Se almacena correctamente el nombre del alimento" do
              expect(@yogurt.alimento).to eq("Yogurt")
              expect(@glucosa.alimento).to eq("Glucosa")
          end
          
          it "Se almacena correctamente las proteinas del alimento" do
              expect(@yogurt.proteinas).to eq(3.8)
              expect(@glucosa.proteinas).to eq(0)
          end
          
          it "Se almacena correctamente los glucidos del alimento" do
              expect(@yogurt.glucidos).to eq(4.9)
              expect(@glucosa.glucidos).to eq(0)
          end
          
          it "Se almacena correctamente las grasas del alimento" do
              expect(@yogurt.grasas).to eq(3.8)
              expect(@glucosa.grasas).to eq(0)
          end
          
          it "Se almacena correctamente las mediciones de los individuos" do
              expect(@yogurt.g).to eq([[6.1 , 6.6 , 6.3 , 6.3 , 6.1 , 6.9 , 6.8 , 6.5 , 6.4 , 6.9 , 6.8 , 6.5 , 6.3 , 6.2 , 6.7 , 6.2 , 5.9 , 5.8 , 5.8 , 5.8 , 5.8 , 5.8 , 5.9 , 6.2 , 6.4],[4.9 , 4.9 , 5.2 , 5.8 , 6.5 , 7.0 , 7.2 , 7.3 , 7.3 , 6.6 , 6.2 , 6.1 , 6.0 , 6.1 , 5.9 , 5.9 , 5.9 , 5.9 , 5.8 , 5.8 , 5.5 , 5.5 , 5.6 , 5.9 , 5.9]])
              expect(@glucosa.g).to eq([[4.9 , 5.3 , 5.9 , 6.7 , 7.2 , 7.6 , 8.0 , 8.2 , 8.2 , 8.4 , 8.3 , 8.3 , 8.0 , 7.5 , 7.1 , 6.8 , 6.8 , 6.9 , 6.8 , 6.3 , 6.2 , 6.3 , 6.2 , 6.3 , 6.1],[6.3 , 5.4 , 5.6 , 5.7 , 6.5 , 7.4 , 7.9 , 7.4 , 7.7 , 7.9 , 7.9 , 7.8 , 7.8 , 7.8 , 8.0 , 8.5 , 9.4 , 10.8 , 10.5 , 9.1 , 8.9 , 8.3 , 7.7 , 7.6 , 7.5]])
          end
      end
  end
  
  context "Existiendo métodos de la clase" do
      
      describe "# calculo del AIBC" do
          it "Se calcula correctamente el AIBC" do
              expect(@yogurt.AIBC).to eq([21.75, 138.5])
              expect(@glucosa.AIBC).to eq([256.0, 186.5])
          end
      end
      
      describe "# calculo del indice glucemico relativo por individuo" do
          it "Se calcula correctamente el indice glucemico relativo por individuo" do
              IG_idv=[]
              for i in (0..@yogurt.AIBC.length-1)
                  IG_idv << ((@yogurt.AIBC[i]/@glucosa.AIBC[i])*100).round(2)
                  expect(IG_idv[i]).to eq(((@yogurt.AIBC[i]/@glucosa.AIBC[i])*100).round(2))
              end
              
          end
      end
      
      describe "# calculo del sumatorio de los indices glucemicos relativos por individuo" do
          it "Se calcula correctamente el sumatorio de los indices glucemicos relativos por individuo" do
              Sumatorio_IG_idv=IG_idv.reduce :+
              expect(Sumatorio_IG_idv).to eq(82.76)
          end
      end
      
  end

end
