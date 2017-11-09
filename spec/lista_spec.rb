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
        
        context "Existiendo métodos de la clase" do
            
            describe "# Se introduce nuevo nodo en la cola" do
                it "Incrementa el tamaño y se introduce dicho nodo" do
                    expect(@lista.introducir_en_cola!(24)).to eq(1)
                end
            end
            
            describe "# Se introduce nuevo nodo en la cabeza" do
                it "Incrementa el tamaño y se introduce dicho nodo" do
                    expect(@lista.introducir_en_cabeza!(89)).to eq(1)
                end
            end
            
            describe "# Se quita nodo de la cola" do
                it "Disminuye el tamaño y se elimina dicho nodo" do
                    expect(@lista.quitar_cola!).to eq(nil)
                end
            end
            
            describe "# Se quita nodo de la cabeza" do
                it "Disminuye el tamaño y se elimina dicho nodo" do
                    expect(@lista.quitar_cabeza!).to eq(nil)
                end
            end
            
            describe "# Visualización de la cola y cabeza de una lista" do
                
                context "Si no se ha establecido cabeza y cola" do
                    it "Se visualiza un mensaje en relación a que no se ha establecido ni cabeza ni cola" do
                        expect(@lista.to_s).to eq("Sin valores almacenados.")
                    end
                end
            end
            
        end
        
    end
    
end
