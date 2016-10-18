//
//  PokemonSearchViewController.swift
//  Pokedex
//
//  Created by Nathan Hopkins on 10/18/16.
//  Copyright © 2016 NathanHopkins. All rights reserved.
//

import UIKit

class PokemonSearchViewController: UIViewController, UISearchBarDelegate {

    //============================
    //  Mark: - Propreties
    //============================
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var abilitiesLabel: UILabel!
    
    //============================
    //  Mark: - General
    //============================
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //============================
    //  Mark: - Methods
    //============================
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        // Gett search text from search bar
        
        guard let searchTerm = searchBar.text else { return }
        
        
        // Fetch Pokemon details
    }
}
