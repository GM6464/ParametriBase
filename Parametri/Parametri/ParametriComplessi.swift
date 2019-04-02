//
//  ParametriComplessi.swift
//  Parametri
//
//  Created by Modi Nuovi on 01/04/2019.
//  Copyright © 2019 GMWare. All rights reserved.
//

import Foundation
class Parametri
{
    public var punteggio: Int = 0
    public var stato: Bool = false
    public var elenco: [String] = ["","","",""]
    init ()
    {
        if let statoSalvato = UserDefaults.standard.value(forKey: "stato") as? Bool
        {
            stato=statoSalvato
        }
        if let punteggioSalvato = UserDefaults.standard.value(forKey: "punteggio") as? Int
        {
            punteggio=punteggioSalvato
        }
        if let elencoSalvato = UserDefaults.standard.value(forKey: "elenco") as? [String]
        {
            elenco=elencoSalvato
        }
        
    }
    
    public func Salva()
    {
        UserDefaults.standard.set(stato,forKey: "stato")
        UserDefaults.standard.set(punteggio,forKey: "punteggio")
        UserDefaults.standard.set(elenco,forKey: "elenco")
    }
    
    
}
