//
//  ContentView.swift
//  kausus
//
//  Created by Ilja Stepanow on 10.09.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedKausus: Kausus = Kausus.accusativ
    @State private var selectedWord: NounClass = NounClass(Wurzel: "Baum", Geschlect: Geschlecht.masculinum)
    
    @FetchRequest(sortDescriptors: []) var nouns : FetchedResults<Noun>
    
    
    private var wordGenerator = WordGenerator()
    
    var body: some View {
        
        List(nouns) { noun in
            Text(noun.wurzel ?? "Unknown")
            }
        
        Text(wordGenerator.buildWord(word: selectedWord, kausus: selectedKausus))
            .padding()
    
        List {
            Picker("Kausus", selection: $selectedKausus) {
                Text("Acc").tag(Kausus.accusativ)
                Text("Nom").tag(Kausus.nominativ)
                Text("Dat").tag(Kausus.dativ)
                Text("Gen").tag(Kausus.genetiv)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
