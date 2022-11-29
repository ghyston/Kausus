//
//  WordGenerator.swift
//  kausus
//
//  Created by Ilja Stepanow on 10.09.22.
//

import Foundation

class WordGenerator {
    
    let endings = [Kausus.accusativ: [Geschlecht.masculinum: "e"]] //TODO: define proper rules
    
    func buildWord(word: NounClass, kausus: Kausus) -> String {
        return
            nounArticel(word: word, kausus: kausus) +
            " " +
            word.Wurzel +
            word.Beendung;
    }
    
    private func nounArticel(word: NounClass, kausus: Kausus) -> String {
      switch (word.Geschlect, kausus) {
      case (.masculinum, .accusativ):
          return "der";
      case (.masculinum, .nominativ):
          return "den";
      case (.masculinum, .dativ):
          return "dem";
      case (.masculinum, .genetiv):
          return "des"; //TODO: +s!
          
      case (.femininum, .accusativ):
          return "die";
      case (.femininum, .nominativ):
          return "die";
      case (.femininum, .dativ):
          return "der";
      case (.femininum, .genetiv):
          return "der";
          
      case (.neutrum, .accusativ):
          return "das";
      case (.neutrum, .nominativ):
          return "das";
      case (.neutrum, .dativ):
          return "dem";
      case (.neutrum, .genetiv):
          return "des";
      }
    }
              
    /*private func nounEnd(word: Noun, kausus: Kausus) -> String {
      switch (word.Geschlect, kausus) {
      case (.masculinum, .accusativ):
          return "e1";
      case (.masculinum, .nominativ):
          return "e2";
      case (.masculinum, .dativ):
          return "e3";
      case (.masculinum, .genetiv):
          return "e4";
          
      case (.femininum, .accusativ):
          return "e5";
      case (.femininum, .nominativ):
          return "e6";
      case (.femininum, .dativ):
          return "e7";
      case (.femininum, .genetiv):
          return "e8";
          
      case (.neutrum, .accusativ):
          return "e9";
      case (.neutrum, .nominativ):
          return "e10";
      case (.neutrum, .dativ):
          return "e11";
      case (.neutrum, .genetiv):
          return "e12";
      }
    }*/
}
