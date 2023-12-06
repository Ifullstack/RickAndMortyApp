//
//  NSCacheStore.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 6/12/23.
//

import Foundation

// Global dictionary to hold NSCacheStore instances based on type names
private var cacheManagerInstances: [String: Any] = [:]
private let cacheManagerQueue = DispatchQueue(label: "com.trendier.cacheManagerQueue")

public class NSCacheStore<Key: Hashable, Value> {
    
    private var cache: DefaultNSCacheStoreDatasource<Key, Value>
    
    static public var shared: NSCacheStore<Key, Value> {
        let typeName = "\(Key.self)-\(Value.self)"
        if let cachedInstance = cacheManagerInstances[typeName] as? NSCacheStore<Key, Value> {
            return cachedInstance
        }
        let newInstance = NSCacheStore<Key, Value>()
        cacheManagerQueue.sync {
            cacheManagerInstances[typeName] = newInstance
        }
        return newInstance
    }

    public init() {
        self.cache = DefaultNSCacheStoreDatasource<Key, Value>()
    }
    
    public func save(_ value: Value, forKey key: Key) {
        cache.save(value, forKey: key)
    }
    
    public func retrieve(forKey key: Key) -> Value? {
        return cache.retrieve(forKey: key)
    }
    
    public func removeValue(forKey key: Key) {
        cache.removeValue(forKey: key)
    }
    
    public subscript(key: Key) -> Value? {
        get {
            return retrieve(forKey: key)
        }
        set {
            if let value = newValue {
                save(value, forKey: key)
            } else {
                removeValue(forKey: key)
            }
        }
    }
    
    public func clear() {
        cacheManagerInstances = [:]
    }
}

