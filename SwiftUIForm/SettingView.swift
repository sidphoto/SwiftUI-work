//
//  SettingView.swift
//  SwiftUIForm
//
//  Created by 鄭家騰 on 2021/7/13.
//


import SwiftUI


struct SettingView: View {
private var displayOrders = ["Alphabetical","Show Favorite First","Show Check-in First"]

    @State private var selectedOrder = 0
    @State private var showCheckInOnly = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("SORT PREDERENCE")) {
                    Picker(selection: $selectedOrder, label: Text("Display order")) {
                        ForEach(0 ..< displayOrders.count, id: \.self) {
                            Text(self.displayOrders[$0])
                        }
                    }
                }
            
                Section(header: Text("FILTER PREFERENCE")) {
                    Toggle(isOn: $showCheckInOnly) {
                        Text("Show Check-in Only")
                    }
                }
            }
        .navigationBarTitle("Settings")
        }
    }
}
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}


