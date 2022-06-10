//
//  SettingsView.swift
//  Fructus
//
//  Created by Pavel Bohomolnyi on 09/06/2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Pavel Bohomolnyi")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 15.5")
                        SettingsRowView(name: "LinkedIn", linkLabel: "Go to site", linkDestination: "www.linkedin.com/in/pavel-bohomolnyi/")
                        SettingsRowView(name: "Facebook", linkLabel: "Go to site", linkDestination: "www.facebook.com/p.bogomolny/")
                        SettingsRowView(name: "GitHub", linkLabel: "Go to site", linkDestination: "github.com/PavelBohomolny")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } //: Box
                    
                } //: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    )
                .padding()
            } //: Scroll
        } //: Navigation
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
