import UIKit

// Extensions

let myMeters: Double = 5000

extension Double {
    
    var Km: Double {
        return self / 1000
    }
    
    var M:Double {
        return self
    }
    
    var Cm: Double {
        return self * 100
    }
}

print(myMeters.M)
