//
//  HealthQuest.swift
//  SIDEQUESTS
//
//  Created by Sruthi Malineni on 2/4/23.
//

import SwiftUI

struct HealthQuest: View {
    @State private var swipe = false
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .ignoresSafeArea(edges:.top)
                .ignoresSafeArea(edges:.bottom)
            VStack{
                Text(CurrentTask.chooseHealth())
                    .bold()
                    .foregroundColor(.black)
                    .padding(.all,10)
                    .padding([.leading,.trailing],10)
                    .background(Color.white)
                    .cornerRadius(20)
                if CurrentTask.getCurrentTaskType() == "Health"{
                    Toggle(isOn: $swipe) {
                        
                    }
                    .padding()
                    .offset(x:-150)
                    
                }
            }
        }
    }
}

struct HealthQuest_Previews: PreviewProvider {
    static var previews: some View {
        HealthQuest()
    }
}
