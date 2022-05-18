//
//  TDetailViewModel.swift
//  TimeCounter
//
//  Created by nguyen.van.quangf on 18/05/2022.
//

import Foundation

enum CountKinds: String {
    case `default` = "Kind of Count"
    case increase = "Count from"
    case down = "Count down"
}

class TDetailViewModel: ObservableObject {
    @Published var currentKindCount: CountKinds = .default
    @Published var title: String = "Work From Home"
    @Published var backgroundColor = Palette.colorArray.first ?? "000000"
    @Published var textCorlor = Palette.textColor.first ?? "FFFFFF"
    
    func increaseKind() {
        currentKindCount = CountKinds.increase
    }
    func downKind() {
        currentKindCount = CountKinds.down
    }
}