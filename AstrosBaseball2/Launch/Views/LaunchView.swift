//
//  LaunchView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/6/25.
//

import SwiftUI

struct LaunchView: View
{
    @State private var loadingText:[String] = "Loading...".map{ String($0) } //maps a single string into an array of strings
    @State private var showLoadingText = false
    @State private var counter = 0
    @State private var loops = 0
    @Binding var showLaunchView:Bool
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View
    {
        ZStack
        {
            Color.launch.background
                .ignoresSafeArea()
            
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            
            ZStack
            {
                if showLoadingText
                {
                    HStack(spacing: 0)
                    {
                        ForEach(loadingText.indices) { index in
                            Text(loadingText[index])
                                .font(.headline)
                                .foregroundColor(Color.launch.accent)
                                .fontWeight(.heavy)
                                .offset(y: counter == index ? -5: 0)
                        }
                    }
                    .transition(AnyTransition.scale.animation(.easeIn))
                }

            }
            .offset(y: 70) //brings loading.. down 70
        }
        .onAppear {
            showLoadingText.toggle()
        }
        .onReceive(timer, perform: { _ in
            withAnimation(.spring()) {
                let lastIndex =  loadingText.count - 1
                if counter == lastIndex
                {
                    counter = 0
                    loops += 1
                    if loops >= 2
                    {
                        showLaunchView = false
                    }
                }
                else
                {
                    counter += 1
                }
                
            }
        })
    }
}

#Preview {
    LaunchView(showLaunchView: .constant(true))
}
