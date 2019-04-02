//
//  ParametriSemplici.swift
//  Parametri
//
//  Created by Modi Nuovi on 01/04/2019.
//  Copyright © 2019 GMWare. All rights reserved.
//

import Foundation

class SalvaParametri
{

static public func leggiStatoSuono() -> Bool
{
    var stato=false
    if let statoSalvato = UserDefaults.standard.value(forKey: "StatoSuono") as? Bool
    {
        stato=statoSalvato
    }
    return stato
}
static public func salvaStatoSuono(statoAttuale: Bool)
{
    UserDefaults.standard.set(statoAttuale, forKey: "StatoSuono")
}
    
    static public func leggiParametro(nomeParametro: String) -> String
    {
        var parametro=""
        if let statoSalvato = UserDefaults.standard.string(forKey:nomeParametro)
        {
            parametro=statoSalvato
        }
        return parametro
    }
    static public func salvaParametro(nomeParametro: String,valore: String)
    {
        UserDefaults.standard.set(valore, forKey: nomeParametro)
    }
}
