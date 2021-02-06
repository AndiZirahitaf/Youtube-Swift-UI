//
//  ContentView.swift
//  YouTube
//
//  Created by Andi Zirahitaf on 28/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        NavigationView{
            
            Content()
            
                .navigationBarItems(
                    
                    
                    leading:
                        HStack{
                            Button(action: {print("Hello Button")}){
                                Image("youtube")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 130, height: 130)
                            }
                        },
                    
                    trailing:
                        HStack(spacing:25){
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "bell.fill")
                                    .foregroundColor(Color.black)
                            }
                            
                            
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.black)
                            }
                            
                            
                                
                                Button(action: {print("Hello Button")}){
                                    NavigationLink(destination: SettingView()){
                                    Image("profile")
                                    .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .clipShape(Circle())
                                }
                            }
                        }
            
                )
                .navigationBarTitle("", displayMode:.inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Content: View {
    var body: some View {
        List{
            
            CellContent(imageContent: "kokbisa_bola", profileContent: "kok_bisa", judul: "Kenapa Sepak Bola Populer?", deskripsi: "Kok Bisa? · 1T x ditonton · 1 detik yang lalu", durasi: "12.42")
          
            CellContent(imageContent: "kokbisa_kesehatan", profileContent: "kok_bisa", judul: "Gimana Cara Obat Dibuat?", deskripsi: "Kok Bisa? · 1 x ditonton · 1 abad yang lalu", durasi: "12.42")
            
            CellContent(imageContent: "kokbisa_kimia", profileContent: "kok_bisa", judul: "Apa Itu Kimia?", deskripsi: "Kok Bisa? · ∞ x ditonton · 0 detik yang lalu", durasi: "12.42")
        }
    }
}

//komponen untuk cell
struct CellContent: View {
    
    var imageContent = String()
    var profileContent = String()
    var judul = String()
    var deskripsi = String()
    var durasi = String()
    
    var body: some View {
        //konten 1
        VStack{
            ZStack (alignment: .bottomTrailing){
                Image(imageContent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(durasi)
                    .padding(4)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(3)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack{
                Image(profileContent)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text(judul)
                        .font(.headline)
                    HStack{
                        Text(deskripsi)
                            .font(.caption)
                    }
                }
                
                Spacer()
                Image(systemName: "list.bullet")
            }
            
        }
    }
}

