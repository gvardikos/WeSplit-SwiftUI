//
//  ContentView.swift
//  WeSplit
//
//  Created by George Vardikos on 15/6/21.
//

import SwiftUI

struct ContentView: View {

    @State private var count = 0
    @State private var name = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Enter your name: ", text: $name)
                Text("howdy, \(name)")

                Button("Tap Count: \(count)") {
                    self.count += 1
                }

                Section {
                    ForEach(0 ..< 5) {
                        Text("lala \($0)")
                    }
                }

                Section {
                    Text("lala")
                    Text("lala")
                    Text("lala")
                }

                // Does not change how it is displayed in the screen
                Group {
                    Text("lala")
                    Text("lala")
                    Text("lala")
                    Text("lala")
                    Text("lala")
                    Text("lala")
                }


            }.navigationBarTitle("SwiftUI Form", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
