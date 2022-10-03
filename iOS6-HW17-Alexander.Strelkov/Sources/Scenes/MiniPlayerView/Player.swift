//
//  Player.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 28.08.2022.
//

import SwiftUI

struct Player: View {
    var animation: Namespace.ID
    @Binding var expand: Bool
    var imageFullScreenMode = UIScreen.main.bounds.height / 3
    var safeAreaInsets = UIApplication.shared.windows.first?.safeAreaInsets
    @State var volume: CGFloat = 0
    @State var offset: CGFloat = 0
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeAreaInsets?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            HStack(spacing: 15) {
                if expand {
                    Spacer(minLength: 0)
                }
                Image("EnjoyPic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? imageFullScreenMode : 55, height: expand ? imageFullScreenMode : 55)
                    .cornerRadius(15)
                if !expand {
                    Text("Enjoy the silence")
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                Spacer(minLength: 0)
                if !expand {
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
            }
            .padding(.horizontal)
            VStack(spacing: 15) {
                Spacer(minLength: 0)
                HStack {
                    if expand {
                        VStack {
                            Text("Enjoy the silence")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("Depeche Mode")
                                .font(.title3)
                                .foregroundColor(.primary)
                        }
                        .matchedGeometryEffect(id: "Label", in: animation)
                    }
                    Spacer(minLength: 0)
                    Button(action: {} ) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                .padding(.top, 20)
                HStack {
                    Capsule()
                        .fill(
                            LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.7), Color.primary.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(height: 4)
                    Text("2:43")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Capsule()
                        .fill(
                            LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.1), Color.primary.opacity(0.7)]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(height: 4)
                }
                .padding()
                HStack {
                    Button(action: {} ) {
                        Image(systemName: "backward.fill")
                            .padding()
                    }
                    .padding()
                    Button(action: {} ) {
                        Image(systemName: "play.fill")
                            .padding()
                    }
                    .padding()
                    Button(action: {} ) {
                        Image(systemName: "forward.fill")
                            .padding()
                    }
                    .padding()
                }
                .font(.largeTitle)
                .foregroundColor(.primary)
                Spacer(minLength: 0)
                HStack(spacing: 15) {
                    
                    Image(systemName: "speaker.fill")
                    Slider(value: $volume)
                    Image(systemName: "speaker.wave.2.fill")
                }
                .padding()
                HStack(spacing: 22) {
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    .padding()
                }
                .padding(.bottom, 50)
            }
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        .frame(maxHeight: expand ? .infinity : 80)
        .background(
            VStack(spacing: 0) {
                BluringView()
                Divider()
            }
                .onTapGesture(perform: {
                    withAnimation(.spring()) { expand = true }
                })
        )
        .cornerRadius(expand ? 20 : 0)
        .offset(y: expand ? 0 : 295)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
        .ignoresSafeArea()
    }
    func onChanged(value: DragGesture.Value) {
        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }
    }
    func onEnded(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95, blendDuration: 0.95)) {
            if value.translation.height > imageFullScreenMode {
                expand = false
            }
            offset = 0
        }
    }
}

