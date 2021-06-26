

class TrackCar: Car {
    var mark: String
    var year: String
    var trunkVolume: Int
    var bodyVolume: Int
    var isEngineRun: Bool
    var isWindowOpen: Bool
    var isTrunkFull: Bool
    var isBodyFull: Bool
    
    init(mark: String, year: String, trunkVolume: Int, bodyVolume: Int, isEngineRun: Bool, isWindowOpen: Bool, isTrunkFull: Bool, isBodyFull: Bool) {
        self.mark = mark
        self.year = year
        self.trunkVolume = trunkVolume
        self.bodyVolume = bodyVolume
        self.isBodyFull = isBodyFull
        self.isTrunkFull = isTrunkFull
        self.isEngineRun = isEngineRun
        self.isWindowOpen = isWindowOpen
    }
}

extension TrackCar: CustomStringConvertible{
    var description: String {
        return "\(mark), \(year) year: "
    }
}
