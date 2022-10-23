//
//  ContentView.swift
//  cards
//
//  Created by Touqeer's Macbook  on 31/08/2022.
//

import SwiftUI

struct ContentView: View {
  @State  var playerCard = "card3"
    @State var cpuCard  = "card9"
    @State  var playerScore = 0
    @State  var cpuScore = 0
    
    
    var body: some View {
        ZStack{
           

            Image("background").ignoresSafeArea()
          

            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
               
                    
                    Button( action: {
                        
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in: 2...14)
                        
                        
                        playerCard = "card" + String(playerRand) ;
                       
                        cpuCard = "card" + String(cpuRand)
                       
                        
                        if playerRand > cpuRand {
                            playerScore += 1
                        }
                        
                        else if cpuRand > playerRand {
                            cpuScore += 1
                        }
                        
                    } ,  label :{
                        Image("dealbutton")
                        
                    })
                
                Spacer()
                
                
                HStack{
                    Spacer()
                    VStack{
                        
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text (String(playerScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                          }
                  
                
                   
                    Spacer()
                  
                    VStack{
                        
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text (String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                    }
                    Spacer()
                }
                
                Spacer()
            }
            
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
