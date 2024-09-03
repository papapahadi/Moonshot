//
//  AstronautView.swift
//  Moonshot
//
//  Created by Jatin Singh on 02/09/24.
//

import SwiftUI

struct AstronautView: View {
    let astronaut : Astronaut
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack {
                    Image(astronaut.id)
                        .resizable()
                        .scaledToFit()
                    
                    Text(astronaut.description)
                        .padding()
                }
            }
            .background(.darkBackground)
            .navigationTitle(astronaut.name)
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    let astronauts : [String : Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautView(astronaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}
