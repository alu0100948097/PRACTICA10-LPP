# encoding: utf-8
# Esta clase permite representar alimentos con sus distintos macronutrientres.
# Su desarrollo ha sido dirigido por pruebas (TDD).
# Se han incluido el mixin Comparable
#
# Author::    Sergio Ferrera de Diego  (mailto:sergioferrera1296@gmail.com)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby

class Alimentos
    
    include Comparable
    
    attr_reader :alimento, :proteinas, :glucidos, :grasas
    
    attr_accessor :g
    
    # Método para definir la forma en la que comparar instancias de la clase
    def <=>(other)
        valor_ener <=> other.valor_ener
    end
	
    def == (other)
        alimento == other.alimento
    end

    # Método para asignar los datos del alimento
    #
    # @param alimento nombre del alimento
    # @param proteinas cantidad de proteinas del alimento
    # @param glucidos cantidad de glucidos del alimento
    # @param grasas cantidad de grasas del alimento
    def initialize(alimento,proteinas,glucidos,grasas)
      @alimento = alimento
      @proteinas = proteinas
      @glucidos = glucidos
      @grasas = grasas
    end

    # Método para definir la forma en la que mostrar los datos del alimento
	def to_s
        "(#{@alimento}, #{@proteinas}, #{@glucidos}, #{@grasas})"
    end

    # Método para calcular el valor energetico del alimento
	def valor_ener
        (@glucidos*4) + (@grasas*9) + (@proteinas*4)
    end

    # Método para calcular el Área incremental bajo la curva (AIBC) de un alimento o glucosa, dependiendo de que se le pase por parametro
    #
    # @param mediciones vector que contiene mediciones de glucosa o de un alimento
    def AIBC
        aibc=Array.new
        g.each do |x|
            almacen=Array.new
            vec_2=(1..x.length-1).to_a.zip(x.drop(1))
            vec_2.each{ |val|  almacen<<(((val[1]-x[0]+x[val[0]-1]-x[0])/2)*5).round(2)}
            aibc<<(almacen.reduce :+)
        end
        aibc
    end
   
end

# Esta clase permite representar los grupos de alimento
# de un alimento representado por la clase Alimentos.
# Su desarrollo ha sido dirigido por pruebas (TDD).

class G_alimentos < Alimentos
    
    attr_reader :grupo
    
    # Método para asignar los datos del alimento
    #
    # @param alimento nombre del alimento
    # @param proteinas cantidad de proteinas del alimento
    # @param glucidos cantidad de glucidos del alimento
    # @param grasas cantidad de grasas del alimento
    # @param grupo grupo de alimentos al que pertenece el alimento
    def initialize(alimento,proteinas,glucidos,grasas,grupo)
        super(alimento,proteinas,glucidos,grasas)
        @grupo = grupo
    end
    
    # Método para definir la forma en la que mostrar los datos del alimento con su respectivo grupo
    def to_s
        "(#{@alimento}, #{@proteinas}, #{@glucidos}, #{@grasas}, [#{@grupo}])"
    end
    
end
