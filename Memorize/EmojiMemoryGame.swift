//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Guilherme Chafy on 05/07/20.
//  Copyright © 2020 Guilherme Chafy. All rights reserved.
//

import SwiftUI



class EmojiMemoryGame {
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🎃","👻", "🤖"]
        return MemoryGame<String>(numberOfPairsOfCards: 3){
            pairIndex in return emojis[pairIndex]
        }
    }
    
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards;
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}

