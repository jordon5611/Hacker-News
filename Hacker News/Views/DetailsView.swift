//
//  DetailsView.swift
//  Hacker News
//
//  Created by Waqar naeem on 17/11/2021.
//

import SwiftUI


struct DetailsView: View {
    let Url : String?
    var body: some View {
        WebView(UrlString: Url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(Url: "https://www.google.com")
    }
}

