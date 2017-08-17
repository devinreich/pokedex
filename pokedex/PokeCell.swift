//
//  PokeCell.swift
//  pokedex
//
//  Created by Devin Reich on 8/17/17.
//  Copyright © 2017 Devin Reich. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbNail: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbNail.image = UIImage(named: "\(self.pokemon.pokedexID)")
    }
    
}
