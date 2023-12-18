import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountStellaArtois: UILabel!
    @IBOutlet weak var amountHoegaarden: UILabel!
    @IBOutlet weak var amountPaulaner: UILabel!
    @IBOutlet weak var informationOutput: UILabel!
    @IBOutlet weak var stellaArtoisStepper: UIStepper!
    @IBOutlet weak var hoegaardenStepper: UIStepper!
    @IBOutlet weak var paulanerStepper: UIStepper!
    
    var stellaArtoisAmount = 0
    var hoegaardenAmount = 0
    var paulanerAmount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        stellaArtoisStepper.maximumValue = Double(BeerStellaArtois.shared.liters)
        hoegaardenStepper.maximumValue = Double(BeerHoegaarden.shared.liters)
        paulanerStepper.maximumValue = Double(BeerPaulaner.shared.liters)
    }

    @IBAction func stellaArtoisStepper(_ sender: UIStepper) {
        amountStellaArtois.text = "\(Int(sender.value))"
        stellaArtoisAmount = Int(sender.value)
    }
    
    @IBAction func hoegaardenStepper(_ sender: UIStepper) {
        amountHoegaarden.text = "\(Int(sender.value))"
        hoegaardenAmount = Int(sender.value)
    }
    
    @IBAction func paulanerStepper(_ sender: UIStepper) {
        amountPaulaner.text = "\(Int(sender.value))"
        paulanerAmount = Int(sender.value)
    }
    
    @IBAction func sellButtonPressed(_ sender: UIButton) {
        let stellaArtoisText = SellManager.shared.sellStellaArtois(amountLiters: stellaArtoisAmount)
        stellaArtoisStepper.value = 0
        amountStellaArtois.text = "0"
        stellaArtoisAmount = 0
        stellaArtoisStepper.maximumValue = Double(BeerStellaArtois.shared.liters)
        
        let hoegaardenText = SellManager.shared.sellHoegaarden(amountLiters: hoegaardenAmount)
        hoegaardenStepper.value = 0
        amountHoegaarden.text = "0"
        hoegaardenAmount = 0
        hoegaardenStepper.maximumValue = Double(BeerHoegaarden.shared.liters)
        
        let paulanerText = SellManager.shared.sellPaulaner(amountLiters: paulanerAmount)
        paulanerStepper.value = 0
        amountPaulaner.text = "0"
        paulanerAmount = 0
        paulanerStepper.maximumValue = Double(BeerPaulaner.shared.liters)
        
        informationOutput.text = "\(stellaArtoisText) \(hoegaardenText) \(paulanerText)"
    }
    
    @IBAction func startDayButtonPressed(_ sender: UIButton) {
        BeerStellaArtois.shared.liters = 20
        BeerHoegaarden.shared.liters = 20
        BeerPaulaner.shared.liters = 20
        SellManager.shared.revenue = 0
        informationOutput.text = ""
        stellaArtoisAmount = 0
        hoegaardenAmount = 0
        paulanerAmount = 0
        stellaArtoisStepper.maximumValue = Double(BeerStellaArtois.shared.liters)
        hoegaardenStepper.maximumValue = Double(BeerPaulaner.shared.liters)
        paulanerStepper.maximumValue = Double(BeerPaulaner.shared.liters)
    }
    
    @IBAction func endDayButtonPressed(_ sender: UIButton) {
        informationOutput.text = "Revenue is \(SellManager.shared.revenue)$"
        SellManager.shared.revenue = 0
    }
}

