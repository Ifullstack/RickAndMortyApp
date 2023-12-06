//
//  NSCacheStore.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 9/9/23.
//

import Foundation

public protocol NSCacheStoreDatasource {
    associatedtype Key: Hashable
    associatedtype Value
    
    func save(_ value: Value, forKey key: Key)
    func retrieve(forKey key: Key) -> Value?
    func removeValue(forKey key: Key)
    subscript(key: Key) -> Value? { get set }
}

public class DefaultNSCacheStoreDatasource <Key: Hashable, Value>: NSCacheStoreDatasource {
    private let wrapped = NSCache<WrappedKey, Entry>()
    
    public func save(_ value: Value, forKey key: Key) {
        let entry = Entry(value: value)
        wrapped.setObject(entry, forKey: WrappedKey(key))
    }
    
    public func retrieve(forKey key: Key) -> Value? {
        let entry = wrapped.object(forKey: WrappedKey(key))
        return entry?.value
    }
    
    public func removeValue(forKey key: Key) {
        wrapped.removeObject(forKey: WrappedKey(key))
    }
}

private extension DefaultNSCacheStoreDatasource {
    final class WrappedKey: NSObject {
        let key: Key

        init(_ key: Key) { self.key = key }

        override var hash: Int { return key.hashValue }

        override func isEqual(_ object: Any?) -> Bool {
            guard let value = object as? WrappedKey else {
                return false
            }
            return value.key == key
        }
    }
}

private extension DefaultNSCacheStoreDatasource {
    final class Entry {
        let value: Value

        init(value: Value) {
            self.value = value
        }
    }
}

public extension DefaultNSCacheStoreDatasource {
     subscript(key: Key) -> Value? {
        get { return retrieve(forKey: key) }
        set {
            guard let value = newValue else {
                // If nil was assigned using our subscript,
                // then we remove any value for that key:
                removeValue(forKey: key)
                return
            }
            save(value, forKey: key)
        }
    }
}

