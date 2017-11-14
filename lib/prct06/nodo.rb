Node = Struct.new(:value, :next, :prev)

def <=>(other)
value <=> other.value
end
