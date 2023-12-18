import Foundation

class SellManager {
    
    static let shared = SellManager()
    
    var revenue = 0
    
    func sellStellaArtois(amountLiters: Int) -> String {
        if amountLiters > 0 {
            if BeerStellaArtois.shared.liters > 0 {
                if BeerStellaArtois.shared.liters >= amountLiters {
                    let totalCost = amountLiters * BeerStellaArtois.shared.cost
                    revenue += totalCost
                    BeerStellaArtois.shared.liters = BeerStellaArtois.shared.liters - amountLiters
                    return ("SrellaArtois cost is \(totalCost)$")
                }
            }
        }
        return " "
    }
    
    func sellHoegaarden(amountLiters: Int) -> String {
        if amountLiters > 0 {
            if BeerHoegaarden.shared.liters > 0 {
                if BeerHoegaarden.shared.liters >= amountLiters {
                    let totalCost = amountLiters * BeerHoegaarden.shared.cost
                    revenue += totalCost
                    BeerHoegaarden.shared.liters = BeerHoegaarden.shared.liters - amountLiters
                    return ("Hoegaarden cost is \(totalCost)$")
                }
            }
        }
        return " "
    }
    
    func sellPaulaner(amountLiters: Int) -> String {
        if amountLiters > 0 {
            if BeerPaulaner.shared.liters > 0 {
                if BeerPaulaner.shared.liters >= amountLiters {
                    let totalCost = amountLiters * BeerPaulaner.shared.cost
                    revenue += totalCost
                    BeerPaulaner.shared.liters = BeerPaulaner.shared.liters - amountLiters
                    return ("Paulaner cost is \(totalCost)$")
                }
            }
        }
        return " "
    }
}
