//
//  Habitat.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 26/09/22.
//

import Foundation

/// Holder of dependencias to be injected
public struct Habitat {
    
    private static var current = Habitat()
    
    private init() {}
    
    public static subscript<Key> (key: Key.Type) -> Key.Value where Key: HabitatKey {
        get { key.currentValue }
        set { key.currentValue = newValue }
    }
    
    public static subscript<T> (_ keyPath: WritableKeyPath<Habitat, T>) -> T {
        get { current[keyPath: keyPath] }
        set { current[keyPath: keyPath] = newValue }
    }
    
}
