import UIKit

// (1)

func tossCoin() ->  String {
    print("Tossing a Coin!")
    
    var rs : String
    let random = arc4random_uniform(2)
    
    if random == 0 {
        rs = "Head"
    }else {
        rs = "Tail"
    }
    return rs
}

// (2)

func tossMultipleCoins(times : Int) -> Double {
    
    var heads = 0
    var tails = 0
    
    for _ in 1...times {
        let result = tossCoin()
        
        switch result {
            
            case "Tail":
            tails += 1
            case "Head":
            heads += 1
        default:
            print("Erorr")
            
        }
    }
    return Double(heads) / Double(times)
}

print(tossMultipleCoins(times: 15))
