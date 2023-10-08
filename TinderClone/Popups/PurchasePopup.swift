//
//  PurchasePopup.swift
//  TinderClone
//
//  Created by Gan Tu on 10/8/23.
//

import SwiftUI

struct PurchasePopup: View {
    @Binding var isVisible: Bool

    let screen = UIScreen.main.bounds
    
    private func processPayment() {
        // TODO
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer().frame(height: 40)

                VStack {
                    Text("Get Tinder Gold")
                        .foregroundStyle(Color.yellow)
                        .font(.system(size: 24, weight: .bold))
                    
                    Text("PurchaseSwipePromo")
                        .frame(height: geo.size.height/3)
                        .background(Color.gray)
                    
                    Text("3 purchase options")
                    
                    Spacer()
                    
                    Button(action: {
                        processPayment()
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundStyle(Color.yellow)
                            
                            Text("CONTINUE")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 20, weight: .heavy))
                        }
                    })
                    .frame(height: 55)
                    .padding(.horizontal, 24)
                    .padding(.top, 12)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("NO THANKS")
                            .foregroundStyle(Color.textPrimary)
                            .font(.system(size: 20, weight: .heavy))
                    })
                    .padding(.vertical, 18)
                    
                    Spacer()
                }
                .frame(width: geo.size.width)
                .padding(.vertical, 20)
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .foregroundColor(.white)
                ) // VSTACK END
                
                Spacer()
                
                VStack(spacing: 5) {
                    Text("Recurring billing, cancel anytime.")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("This is a bunch of example text that is representing the legal text found on all subscription pages. Out of respect to the original application we will not be copying over their legal text word for word here.")
                        .foregroundStyle(Color.white.opacity(0.5))
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 4)
                
                Spacer()
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .frame(height: screen.height)
    }
}

#Preview {
    PurchasePopup(isVisible: .constant(false))
}