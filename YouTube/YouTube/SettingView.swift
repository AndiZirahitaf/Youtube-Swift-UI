//
//  SettingView.swift
//  YouTube
//
//  Created by Andi Zirahitaf on 01/02/21.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            Form {
                
                
                //Setting Foto Profil
                
                Section(){
                    HStack{
                        Image("profile")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        //Nama dan status
                        VStack(alignment: .leading){
                            Text("Steve")
                                .font(.headline)
                            Text("Survivalist")
                                .font(.caption)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                }
                
                //Section pengaturan Umum
                Section(header: Text("Your Data")){
                    HStack{
                        Image(systemName: "clock")
                            .frame(width: 35, height: 35)
                            .background(Color.red)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Watch Later")
                    }
                    HStack{
                        Image(systemName: "icloud.and.arrow.down")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Downloaded Videos")
                    }
                    HStack{
                        Image(systemName: "play.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Your Videos")
                    }
                    HStack{
                        Image(systemName: "alarm")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("History")
                    }
                    
                    
                    
                }
                
                Section(header: Text("Playlists")){
                    HStack{
                        Image(systemName: "plus")
                            .frame(width: 35, height: 35)
                            .background(Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("New Playlist")
                    }
                    HStack{
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        VStack(alignment: .leading){
                        Text("Liked Videos")
                        Text("105 videos")
                            .font(.caption)
                        }
                    }
                    HStack{
                        Image("food")
                            .resizable()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading){
                        Text("Food")
                        Text("20 videos")
                            .font(.caption)
                        }
                    }
                    HStack{
                        Image("sport")
                            .resizable()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading){
                        Text("Sport")
                        Text("62 videos")
                            .font(.caption)
                        }
                    }
            
                    
                    
                    
                }
                
                
            }.navigationBarTitle("Your Profile")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}



