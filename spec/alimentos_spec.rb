require 'alimentos'

describe Alimentos do

  before :each do
    @alimentos = Alimentos.new("Huevo frito", 14.1, 0.0, 19.5)
	@alimentos_2 = Alimentos.new("Leche Vaca", 3.3, 4.8, 3.2)
    @alimentos_3 = Alimentos.new("Yogurt", 3.8, 4.9, 3.8)
    @alimentos_4 = Alimentos.new("Cerdo", 21.5, 0.0, 6.3)
    @alimentos_5 = Alimentos.new("Ternera", 21.1, 0.0, 6.3)
    @alimentos_6 = Alimentos.new("Pollo", 20.6, 0.0, 5.6)
  end

end