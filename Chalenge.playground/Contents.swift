import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketOfPaint: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        return Int(roundedBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amont of paint can cover an area of \(areaCanCover)")
    }
}

print(bucketOfPaint)

bucketOfPaint = 8
