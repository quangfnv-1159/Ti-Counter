//
//  MenuPicker.swift
//  TimeCounter
//
//  Created by nguyen.van.quangf on 18/05/2022.
//

import Foundation
import SwiftUI

@available (iOS 14.0, *)
public struct MenuPicker<T, V: View>: View {
    
    @Binding var selected: Int
    var array: [T]
    var title: String?
    let mapping: (T) -> V
    
    public init(selected: Binding<Int>, array: [T], title: String? = nil,
                mapping: @escaping (T) -> V) {
        self._selected = selected
        self.array = array
        self.title = title
        self.mapping = mapping
    }
    
    public var body: some View {
        if let existingTitle = title {
            HStack {
                Text(existingTitle)
                    .foregroundColor(.primary)
                    .padding(.horizontal)
                menu
            }
        } else {
            menu
        }
    }
    
    var menu: some View {
        Menu(content: {
            ForEach(array.indices, id: \.self) { index in
                Button(action: {
                    selected = index
                }, label: {
                    view(for: index)
                })
            }
        }, label: {
            mapping(array[selected])
        })
    }
    
    @ViewBuilder func view(for index: Int) -> some View {
        if selected == index {
            HStack {
                Image(systemName: "checkmark")
                self.mapping(array[index])
            }
        } else {
            self.mapping(array[index])
        }
    }
}
