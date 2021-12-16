//
//  WebView.swift
//  Hacker News
//
//  Created by Waqar naeem on 18/11/2021.
//

import Foundation
import SwiftUI
import WebKit


struct WebView : UIViewRepresentable {
    
    let UrlString : String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let Safeurl = UrlString{
            if let url = URL(string: Safeurl){
                let request = URLRequest(url: url)
                uiView.load(request)
                
            }
        }
    }
    
}
