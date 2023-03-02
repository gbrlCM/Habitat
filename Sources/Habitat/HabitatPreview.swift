//
//  HabitatPreview.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 26/09/22.
//

import SwiftUI

public struct HabitatPreview<V: View>: View {
    var child: () -> V
    
    public init(@ViewBuilder child: @escaping () -> V, setupEnvirontment: () -> Void) {
        setupEnvirontment()
        self.child = child
    }
    
    public var body: some View {
        child()
    }
}
