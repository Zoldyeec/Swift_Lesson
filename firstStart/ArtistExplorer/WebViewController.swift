//
//  WebViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 26.06.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bandName = "Queen"
        let wikiUrl = ("http://de.m.wikipedia.org/wiki?search=\(bandName)")
        let url = URL(string: wikiUrl)
        
//        let urlRequest = URLRequest(url: url!)
//        webView.load(urlRequest)
        
        if url != nil {
            
            let urlRequest = URLRequest(url: url!)
            
            webView.load(urlRequest)
            
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
