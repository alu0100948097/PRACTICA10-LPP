require 'prct06/lista'

describe List do
    
    before :each do
        
        @lista = List.new()
        
        @lista_2 = List.new()
        @lista_2.introducir_en_cola!(3)
        @lista_2.introducir_en_cabeza!(5)
        
        @lista_3 = List.new()
        @lista_3.introducir_en_cola!(7)
        @lista_3.introducir_en_cabeza!(8)
        @lista_3.quitar_cabeza!
        
        @lista_4 = List.new()
        @lista_4.introducir_en_cola!(9)
        @lista_4.introducir_en_cabeza!(10)
        @lista_4.quitar_cola!
        
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
        
        context "Si se establece cola y cabeza en la lista" do
            it "Cola establecida" do
                expect(@lista_2.cola.value).to eq(3)
            end
            
            it "Cabeza establecida" do
                expect(@lista_2.cabeza.value).to eq(5)
            end
            
            it "Tamaño de la lista" do
                expect(@lista_2.tam).to eq(2)
            end
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
