// Arturo Dominguez MobAppDev Fall 2020
import SwiftUI          // I don't know why we are importing this
import Combine          // for event-driven systems!


// 'final' means that no other class can inherit from THIS class.
final class UserData : ObservableObject {
    @Published var counter: Int = 0
    
    @Published var text: String = "Placeholder" {
        willSet(newValue) {
            print(newValue)
        }
    }
}

