//: Facade pattern implemented on Swift

class Pathfinder {
    func findCurrentLocation() {
        print("Searching... You are here!")
    }
    func findDestinationLocation(location: String) {
        print("You  want to move to \(location)")
    }
    
    func maeARoute() {
        print("Great! for the travel we will chem the YandexMaps")
    }
}

class TravelEngine {
    func findTransport() {
        print("Let's pick a travel-dogs!")
    }
    func orderTransport(){
        print("pick a ready team")
    }
    func travel() {
        print("Yeah! Go!")
    }
}
class TicketPrintSystem {
    func createTicket() {
        print("weating an answer from the base...")
    }
    func printTicket(){
        print("The answer was recieved. good luck!")
    }
}

class TravelSystemFacade {
    func travelTo(aLocation: String) {
        let pf = Pathfinder()
        let te = TravelEngine()
        let tp = TicketPrintSystem()
        
        pf.findCurrentLocation()
        pf.findDestinationLocation(location: aLocation)
        pf.maeARoute()

        te.findTransport()
        te.orderTransport()
        tp.createTicket()
        tp.printTicket()
        te.travel()
    }
}

//Usage the facade pattern

let facede = TravelSystemFacade()
facede.travelTo(aLocation: "London")
