//
//  Profile.swift
//  SIDEQUESTS
//
//  Created by Jeremy Luu on 2/4/23.
//

import SwiftUI
import UIKit

struct Profile: View
{
    @State private var username: String = ""
    @AppStorage("USERNAME_KEY") var savedUsername = ""
    @State private var name: String = ""
    @AppStorage("NAME_KEY") var savedName = ""
    @State private var bio: String = ""
    @AppStorage("BIO_KEY") var savedBio = ""
    
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    
    
    var body: some View
    {
        ZStack
        {
            Image("Background")
                .resizable()
                .ignoresSafeArea(edges:.top)
                .ignoresSafeArea(edges:.bottom)
            
            VStack
            {
                ZStack(alignment:.bottomTrailing) {
                    Button(action: {
                        changeProfileImage = true
                        openCameraRoll = true
                        
                    }, label: {
                        if changeProfileImage{
                            Image(uiImage: imageSelected)
                                .resizable()
                                .frame(width:300,height:300)
                                .clipShape(Circle())
                        } else{
                            Image("Profile")
                                .resizable()
                                .frame(width:300,height:300)
                                .clipShape(Circle())
                        }
                })
                    
                    Image(systemName: "plus")
                        .imageScale(.large)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .clipShape(Circle())
                        .offset(x:-40)
                        .offset(y:-10)
                }.sheet(isPresented: $openCameraRoll){
                    ImagePicker(selectedImage: $imageSelected, sourceType: .photoLibrary)
                }
                .offset(y:-100)
                
                HStack
                {
                    Text("Username:")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 10)
                        .background(Color.black)
                        .cornerRadius(20)
                    TextField("Email", text: $username)
                        .onChange(of: username){ username in
                            self.savedUsername = username
                        }
                        .onAppear{
                            self.username = savedUsername
                            print("Loaded: \(savedUsername)")
                        }
                        .padding()
                        Spacer()
                }
                .offset(x:10)
                HStack
                {
                    Text("Name:")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 10)
                        .background(Color.black)
                        .cornerRadius(20)
                    TextField("Full Name", text: $name)
                        .onChange(of: name){ name in
                            self.savedName = name
                        }
                        .onAppear{
                            self.name = savedName
                            print("Loaded: \(savedName)")
                        }
                        .padding()
                        Spacer()
                }
                .offset(x:10)
                HStack
                {
                    Text("Bio:")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 10)
                        .background(Color.black)
                        .cornerRadius(20)
                    TextField("Share your goals", text: $bio, axis: .vertical)
                        .onChange(of: bio){ bio in
                            self.savedBio = bio
                        }
                        .onAppear{
                            self.bio = savedBio
                            print("Loaded: \(savedBio)")
                        }
                        .lineLimit(6, reservesSpace: true)
                        .padding(.top,-60)
                        .offset(y:80)
                        Spacer()
                }
                .offset(x:10)
                
            }
            
        }
        
        
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
