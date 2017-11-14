# encoding: utf-8
# Esta estructura es la definida para los nodos que formaran la lista doblemente enlazada
# Su desarrollo ha sido dirigido por pruebas (TDD).
#
# Author::    Sergio Ferrera de Diego  (mailto:sergioferrera1296@gmail.com)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby

Node = Struct.new(:value, :next, :prev)

# Método para definir la forma en la que comparar nodos
def <=>(other)
value <=> other.value
end
