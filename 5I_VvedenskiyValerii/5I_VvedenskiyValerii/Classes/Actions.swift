
class Actions: ActionsCar {
    private var car: Car
    
    init(car: Car) {
        self.car = car
    }
    
    func runCar() {
        if car.isEngineRun {
            print("\(car) has allready run")
        }
        
        print("\(car) is running")
    }
    
    func stopCar() {
        if car.isEngineRun {
            print("\(car) stoped")
        }
        else {
            print("\(car) has allready stoped")
        }
    }
    
    func openWindow() {
        if car.isWindowOpen {
            print("windows \(car) has allready opened")
        }
        else {
            print("windows \(car) opened")
        }
    }
    
    func closeWindow() {
        if car.isWindowOpen {
            print("windows \(car) clossed")
        }
        else {
            print("windows \(car) has allready clossed")
        }
    }
    
    func loadCargoIntoTrunk(count: Int) {
        if count < car.trunkVolume{
            print("trunck \(car) is loading")
            car.trunkVolume += count
        }
        else {
            car.isTrunkFull = true
            print("trunck \(car) has allready fulled")
        }
    }
    
    func loadCargoIntoBody(count: Int) {
        if count < car.bodyVolume{
            print("body \(car) is loading")
            car.bodyVolume += count
        }
        else{
            car.isBodyFull = true
            print("body \(car) has allready fulled")
        }
    }
    
    func unloadCargoFromTrunk(count: Int) {
        if car.trunkVolume > 0 {
            print("trunck \(car) is unloading")
            car.trunkVolume -= count
        }
        else {
            car.isTrunkFull = false
            print("trunck \(car) id empty")
        }
    }
    
    func unloadCargoFromBody(count: Int) {
        if car.bodyVolume > 0 {
            print("body \(car) is unloading")
            car.bodyVolume -= count
        }
        else{
            car.isBodyFull = false
            print("body \(car) is empty")
        }
    }
}
