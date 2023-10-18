//
//  ContentView.swift
//  functionsDemo
//
//  Created by Micah Howard on 10/12/23.
//
// functions
import SwiftUI

struct ContentView: View {
    @State var input = ""
    @State var showAlert = false
    @State var numbers: [Double] = [1,2,3,4,5]
    
    @State var total = 0
    @State var count = 0
    func average(numbers: [Double])-> Double {
        var total = 0.0
        let count = Double(numbers.count)
        for item in numbers{
            total += item
            
        }
        return(total/count)

    }
    var body: some View {
        VStack {
           Spacer()
            Text("The average of the numbers in the currect list are = \(average(numbers: numbers))")
            TextField("Add a number to the list", text: $input)
                .padding()
            Button("add"){
                if let new =  Double(input){
                    numbers.append(new)
                    
                } else{
                    showAlert = true
                    
                    
                }
                
               
                print(numbers)
                
            }
            .alert("That is not a valid number", isPresented: $showAlert) {
                Button("ok") {
                    //
                }
                
            }
            Spacer()
           // Text("\(input)")
           Text("\(total)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
