require 'prct06/lista'

describe List do
    
    before :each do
        
        @lista = List.new()
        
    end
    
    describe "# datos de una lista" do
        
        context "Si no se establece cola ni cabeza en la lista" do
            it "Cola de la lista por defecto" do
                expect(@lista.cola).to eq(nil)
            end
            
            it "Cabeza de la lista por defecto" do
                expect(@lista.cabeza).to eq(nil)
            end
            
            it "Tamaño de la lista por defecto" do
                expect(@lista.tam).to eq(0)
            end
        end
        
    end
    
end
