class Alimentos
    
    attr_reader :alimento, :proteinas, :glucidos, :grasas
    
    def initialize(alimento,proteinas,glucidos,grasas)
      @alimento = alimento
      @proteinas = proteinas
      @glucidos = glucidos
      @grasas = grasas
    end
	
	def to_s
        "(#{@alimento}, #{@proteinas}, #{@glucidos}, #{@grasas})"
    end
	
	def valor_ener
        (@glucidos*4) + (@grasas*9) + (@proteinas*4)
    end
   
end