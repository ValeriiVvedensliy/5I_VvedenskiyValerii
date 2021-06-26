import Foundation

var menuItem = 0
var actionsCar: ActionsCar!
var sportCar = SportCar(
    mark: "bmw x5",
    year: "2021",
    trunkVolume: 10,
    bodyVolume: 5,
    isEngineRun: false,
    isWindowOpen: false,
    isTrunkFull: false,
    isBodyFull: false)

var trackCar = TrackCar(
    mark: "ZIL",
    year: "2020",
    trunkVolume: 15,
    bodyVolume: 8,
    isEngineRun: false,
    isWindowOpen: false,
    isTrunkFull: false,
    isBodyFull: false)


repeat {
    print("-= Select Car =-")
    print("1 - Sport Car")
    print("2 - Track Car")
    print("0 - Exit")
    print("Enter menu item: ")
    
    menuItem = Int (readLine() ?? "") ?? 0
    print("\n")
    startProgram(menuItem)
    print("\n")
    
} while menuItem != 0


private func startProgram(_ menuItem: Int) {
    switch menuItem {
    case 1:
        actionsCar = Actions(car: sportCar)
        settinsCar(actionsCar)
        break
    case 2:
        actionsCar = Actions(car: trackCar)
        settinsCar(actionsCar)
        break
    default:
        break
    }
}

private func settinsCar(_ carSetting: ActionsCar) {
    repeat {
        print("-= Menu =-")
        print("1 - run car")
        print("2 - stop cur")
        print("3 - open windows")
        print("4 - close windows")
        print("5 - load cargo into track")
        print("6 - load cargo into body")
        print("7 - unload cargo into track")
        print("8 - unload cargo into body")
        print("0 - Back")
        print("Enter menu item: ")
        
        menuItem = Int (readLine() ?? "") ?? 0
        print("\n")
        settingsCars(menuItem, carSetting)
        print("\n")
        
    } while menuItem != 0
}

private func settingsCars(_ menuItem: Int,_ carSetting: ActionsCar) {
    switch menuItem {
    case 1:
        carSetting.runCar()
        break
    case 2:
        carSetting.stopCar()
        break
    case 3:
        carSetting.openWindow()
        break
    case 4:
        carSetting.closeWindow()
        break
    case 5:
        carSetting.loadCargoIntoTrunk(count: 4)
        break
    case 6:
        carSetting.loadCargoIntoBody(count: 5)
        break
    case 7:
        carSetting.unloadCargoFromTrunk(count: 3)
        break
    case 8:
        carSetting.unloadCargoFromBody(count: 6)
        break
    default:
        break
    }
}
