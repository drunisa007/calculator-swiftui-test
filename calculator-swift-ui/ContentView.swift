//
//  ContentView.swift
//  calculator-swift-ui
//
//  Created by Drunisa on 10/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(.black)]), startPoint: .topLeading, endPoint:.bottomTrailing).ignoresSafeArea()
            VStack(spacing:2){
                HStack{
                    Spacer()
                    Text("0").font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(Color.white)
                        .padding(.trailing,10)
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading).background(Color.black)
                
                
                HStack(spacing:2){
                    
                    CalculatorButtonView(
                        title: "%",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "+/-",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "AC",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "/",
                        buttonColor: Color.orange)
                    
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading).background(Color.black)
                
                
                HStack(spacing:2){
                    
                    CalculatorButtonView(
                        title: "7",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "8",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "9",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "*",
                        buttonColor: Color.orange)
                    
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading).background(Color.black)
                
                
                HStack(spacing:2){
                    CalculatorButtonView(
                        title: "4",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "5",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "6",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "-",
                        buttonColor: Color.orange)
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading).background(Color.black)
                
                
                HStack(spacing:2){
                    CalculatorButtonView(
                        title: "1",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "2",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "3",
                        buttonColor: Color.gray)
                    CalculatorButtonView(
                        title: "+",
                        buttonColor: Color.orange)
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading).background(Color.black)
                
                
                HStack(spacing:2){
                    
                    HStack{
                        CalculatorButtonView(
                            title: "0",
                            buttonColor: Color.gray)
                    }.frame(maxWidth: .infinity,
                            maxHeight: .infinity)
                    HStack(spacing:2){
                        CalculatorButtonView(
                            title: ".",
                            buttonColor: Color.gray)
                        CalculatorButtonView(
                            title: "=",
                            buttonColor: Color.orange)
                    }.frame(maxWidth: .infinity,
                            maxHeight: .infinity)
                    
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading).background(Color.black)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CalculatorButtonView: View {
    
    var title:String
    var buttonColor: Color
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("\(title)")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(buttonColor)
        }
    }
}
