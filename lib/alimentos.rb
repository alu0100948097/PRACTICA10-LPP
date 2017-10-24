class Alimentos
    
    attr_reader :alimento, :proteinas, :glucidos, :grasas
    
    def initialize(alimento,proteinas,glucidos,grasas)
      @alimento = alimento
      @proteinas = proteinas
      @glucidos = glucidos
      @grasas = grasas
    end
   
end