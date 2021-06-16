//
//  ContentView.swift
//  WeSplit
//
//  Created by George Vardikos on 15/6/21.
//

import SwiftUI

struct ContentView: View {

    @State private var checkAmount = ""
    @State private var numOfPeople = 2
    @State private var tipPercentage = 2

    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter the check amount: ", text: $checkAmount)
                        .keyboardType(.decimalPad)

                    Picker("Number of people", selection: $numOfPeople) {
                        ForEach(0 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }

                Section(header: Text("How much do you want to leave?")) {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }

                // Just for refrence of 1-way binding
                Text("$ \(checkAmount)")

            }.navigationBarTitle("We split", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
