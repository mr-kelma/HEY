//
//  Constants.swift
//  HEY
//
//  Created by Valery Keplin on 20.07.22.
//

struct K {
    static let appName = "HEY"
    static let greeting = "Let's communicate!"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "fromRegitrastionToChat"
    static let loginSegue = "fromLoginToChat"
    
    struct BrandColors {
        static let blue = "BrandBlue"
        static let darkBlue = "BrandDarkBlue"
        static let light = "BrandLight"
        static let ligtBlue = "BrandLigtBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
