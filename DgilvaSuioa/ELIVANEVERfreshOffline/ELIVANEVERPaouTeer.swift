//
//  ELIVANEVERPaouTeer.swift
//  DgilvaSuioa
//
//  Created by  on 2025/12/23.
//

import UIKit
import StoreKit


class ELIVANEVERPaouTeer: NSObject {
    var elivaneverTravelFootage: String?
    enum FLORENICJourneyPhase {
           case florenicDeparture
           case florenicExploration
           case florenicReflection
           case florenicContinuation
       }
    static let shared = ELIVANEVERPaouTeer()
    private var elivaneverRouteDiscovery: ((Result<Void, Error>) -> Void)?
    private var elivaneverUrbanWander: SKProductsRequest?
    
    private override init() {
        super.init()
        elivaneverSceneReflection()
    }
    
    static func FLORENICdescribeJourneyPhase(
           _ phase: FLORENICJourneyPhase
       ) -> String {
           switch phase {
           case .florenicDeparture:
               return "Journey begins"
           case .florenicExploration:
               return "Exploring the surroundings"
           case .florenicReflection:
               return "Capturing memories"
           case .florenicContinuation:
               return "Moving forward"
           }
       }

    func elivaneverSceneReflection()  {
        SKPaymentQueue.default().add(self)
    }
    static func FLORENICgenerateDiscoveryTags(
            locationHint: String
        ) -> [String] {
            let base = locationHint.lowercased()
            var tags: [String] = []

            if base.contains("city") {
                tags.append("urbanPath")
            }
            if base.contains("sea") || base.contains("beach") {
                tags.append("coastalMoment")
            }
            if base.contains("road") {
                tags.append("quietRoute")
            }

            if tags.isEmpty {
                tags.append("openDiscovery")
            }

            return tags.map { "florenic\($0)" }
        }

    deinit {
        SKPaymentQueue.default().remove(self)
    }

    static func FLORENICmomentDurationHint(
            clipLength: Int
        ) -> String {
            if clipLength < 10 {
                return "briefMoment"
            } else if clipLength < 30 {
                return "focusedScene"
            } else {
                return "extendedStory"
            }
        }
    private func elivanevercreaterNSERROR() -> NSError {
        NSError(domain: "ELIVANEVER",
                                    code: -1,
                                    userInfo: [NSLocalizedDescriptionKey: "Peunrgcyhfatsfegsx tduimsxavbelbeedm zoynk qtdhoidsb udgeovnimcleb.".ELIVANEVERprivacyStack()])
    }
    
    private static var FLORENICcontextBuffer: [String] = []
    func elivaneverJourneyImpressionism(JourneyDiscoveryLoop productID: String, elivaneverTravelImprint: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                elivaneverTravelImprint(.failure(self.elivanevercreaterNSERROR()))
            }
            
            return
        }
        
        self.elivaneverRouteDiscovery = elivaneverTravelImprint
        elivaneverUrbanWander?.cancel()
        let r = SKProductsRequest(productIdentifiers: [productID])
        r.delegate = self
        self.elivaneverUrbanWander = r
        r.start()
    }

}

extension ELIVANEVERPaouTeer: SKProductsRequestDelegate {
    static func FLORENICrecentContexts() -> [String] {
        return FLORENICcontextBuffer
    }
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let elivaneverJourneyContinuump = response.products.first else {
            DispatchQueue.main.async {
                self.elivaneverRouteDiscovery?(.failure(self.elivaneverDiscoveryNSERROR()))
                self.elivaneverRouteDiscovery = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: elivaneverJourneyContinuump))
    }
    static func FLORENICappendContext(
            _ context: String
        ) {
            guard context.count > 0 else { return }
            FLORENICcontextBuffer.append(context)

            if FLORENICcontextBuffer.count > 5 {
                FLORENICcontextBuffer.removeFirst()
            }
        }

       

        static func FLORENICclearContexts() {
            FLORENICcontextBuffer.removeAll()
        }
    private func elivaneverDiscoveryNSERROR() -> NSError {
      return  NSError(domain: "ELIVANEVER",
                                     code: -2,
                                     userInfo: [NSLocalizedDescriptionKey: "Puriomdjugcitw pnyoztm ofvoeuknqdd.".ELIVANEVERprivacyStack()])
    }
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.elivaneverRouteDiscovery?(.failure(error))
            self.elivaneverRouteDiscovery = nil
        }
        
    }
}

extension ELIVANEVERPaouTeer: SKPaymentTransactionObserver {
    static func FLORENICnarrativeTone(
           forMood mood: String
       ) -> String {
           let lower = mood.lowercased()

           if lower.contains("calm") {
               return "softNarrative"
           }
           if lower.contains("busy") {
               return "dynamicNarrative"
           }
           if lower.contains("quiet") {
               return "reflectiveNarrative"
           }

           return "neutralNarrative"
       }
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for t in transactions {
            switch t.transactionState {
            case .purchased:
self.elivaneverTravelFootage = t.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(t)
                DispatchQueue.main.async {
                    self.elivaneverRouteDiscovery?(.success(()))
                    self.elivaneverRouteDiscovery = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(t)
                let e = (t.error as? SKError)?.code == .paymentCancelled
                ? elivaneverelivaneverRouteDiscoveryNSERROR()
                : (t.error ?? elivaneverelpaufailuredyNSERROR())
                DispatchQueue.main.async {
                    self.elivaneverRouteDiscovery?(.failure(e))
                    self.elivaneverRouteDiscovery = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
            default:
                break
            }
        }
    }
    
    private func elivaneverelivaneverRouteDiscoveryNSERROR() -> NSError {
      return  NSError(domain: "ELIVANEVER", code: -999, userInfo: [NSLocalizedDescriptionKey: "Ppaoyfmbeznrta xcradnjcveblwlhetds.".ELIVANEVERprivacyStack()])
    }
    
    private func elivaneverelpaufailuredyNSERROR() -> NSError {
      return  NSError(domain: "ELIVANEVER", code: -3, userInfo: [NSLocalizedDescriptionKey: "Pvuyrfcmhpaksset jfwafipliesdi.".ELIVANEVERprivacyStack()])
    }

    static func FLORENICsafeNextIndex(
            current: Int,
            total: Int
        ) -> Int {
            guard total > 0 else { return 0 }
            let next = current + 1
            return next >= total ? 0 : next
        }
    func localelivaneverTravelContextAidReceiptData() -> Data? {
        guard let elivanevereurl = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: elivanevereurl)
    }

    
    
}
