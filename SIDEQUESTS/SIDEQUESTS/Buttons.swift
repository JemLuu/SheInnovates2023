//
//  Buttons.swift
//  SIDEQUESTS
//
//  Created by Sruthi Malineni on 2/4/23.
//

import SwiftUI

struct Buttons: View
{
    var body: some View
    {
        
       
            NavigationView
            {
                ZStack
                {
                    Image("Background")
                        .resizable()
                        .ignoresSafeArea(edges:.top)
                        .ignoresSafeArea(edges:.bottom)
    
                    VStack
                    {
                        Text("Choose your side quest for the day!")
                        HStack
                        {
                           Spacer()
                            NavigationLink
                            {
                                Profile()
                            } label:
                            {
                                Image("Profile")
                                    .resizable()
                                    .frame(width:50,height:50)
                            }
                            Text("SIDE QUEST")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .shadow(radius:2)
                                .padding()
                            NavigationLink
                            {
                                Calender()
                            } label:
                            {
                                Image("Calendar")
                                    .resizable()
                                    .frame(width:50,height:50)
                            }
                            Spacer()
                                
                            
                        }
                            .offset(y:-240)
                            .padding(.bottom,-240)
                        NavigationLink
                        {
                            HealthQuest()
                        } label:
                        {
                            Text("Health Quest")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.all, 10)
                                .padding([.leading, .trailing], 30)
                                .background(Color.black)
                                .cornerRadius(20)
                        }.padding()
                        NavigationLink
                        {
                            AcademicQuest()
                        } label:
                        {
                            Text("Academic Quest")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.all, 10)
                                .padding([.leading, .trailing], 30)
                                .background(Color.black)
                                .cornerRadius(20)
                        }.padding()
                        NavigationLink
                        {
                            SocialQuest()
                        } label:
                        {
                            Text("Social Quest")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.all, 10)
                                .padding([.leading, .trailing], 30)
                                .background(Color.black)
                                .cornerRadius(20)
                        }.padding()
                        NavigationLink
                        {
                            MysteryQuest()
                        } label:
                        {
                            Text("Mystery Quest")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.all, 10)
                                .padding([.leading, .trailing], 30)
                                .background(Color.black)
                                .cornerRadius(20)
                        }.padding()
                        
                    }
                    
                }
            }
        }
        
    }
    
    struct Buttons_Previews: PreviewProvider {
        static var previews: some View {
            Buttons()
        }
    }

