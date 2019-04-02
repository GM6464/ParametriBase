//
//  ViewController.swift
//  Parametri
//
//  Created by Modi Nuovi on 01/04/2019.
//  Copyright © 2019 GMWare. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var parametro2: UITextField!
    @IBOutlet weak var parametro1: UITextField!
    @IBOutlet weak var statoSuono: UISwitch!
    
    
    @IBOutlet weak var stato: UISwitch!
    @IBOutlet weak var punteggio: UITextField!
    @IBOutlet weak var info0: UITextField!
    @IBOutlet weak var info1: UITextField!
    @IBOutlet weak var info2: UITextField!
    @IBOutlet weak var info3: UITextField!
    
    var parametri = Parametri()
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        statoSuono.isOn=SalvaParametri.leggiStatoSuono()
        
        
        
        
        

        
        
        
        
        
        
        parametro1.text=SalvaParametri.leggiParametro(nomeParametro: "Parametro1")
         parametro2.text=SalvaParametri.leggiParametro(nomeParametro: "Parametro2")
   
   
        
        
        
        
        stato.isOn = parametri.stato
    punteggio.text = String(parametri.punteggio)
    
        if parametri.elenco.count>0
        {
        info0.text = parametri.elenco[0]
        }
        if parametri.elenco.count>1
        {
            info1.text = parametri.elenco[1]
        }
        if parametri.elenco.count>2
        {
            info2.text = parametri.elenco[2]
        }
        if parametri.elenco.count>3
        {
            info3.text = parametri.elenco[3]
        }
    }

    @IBAction func salvaStatoSuono(_ sender: UISwitch)
    {
        SalvaParametri.salvaStatoSuono(statoAttuale: sender.isOn)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func SalvaP1(_ sender: UITextField)
    {
        SalvaParametri.salvaParametro(nomeParametro: "Parametro1", valore: sender.text!)
    }
    @IBAction func SalvaP2(_ sender: UITextField)
    {
        SalvaParametri.salvaParametro(nomeParametro: "Parametro2", valore: sender.text!)
    }
    
    @IBAction func salvaStato(_ sender: UISwitch)
    {
        parametri.stato=stato.isOn
        parametri.Salva()
    }
    
    
    @IBAction func SalvaPunteggio(_ sender: Any)
    {
        parametri.punteggio = Int( punteggio.text!)!
        parametri.Salva()
    }
    
    
    @IBAction func info0(_ sender: UITextField)
    {
        parametri.elenco[0] = sender.text!
        parametri.Salva()
        
    }
    @IBAction func info1(_ sender: UITextField)
    {
        parametri.elenco[1] = sender.text!
        parametri.Salva()
        
    }
    @IBAction func info2(_ sender: UITextField)
    {
        parametri.elenco[2] = sender.text!
        parametri.Salva()
        
    }
   @IBAction func info3(_ sender: UITextField)
    {
        parametri.elenco[3] = sender.text!
        parametri.Salva()
        
    }
    
    
    
    
}

