//
//  TransactionData.swift
//  Finance Tracker
//
//  Created by Arun Mohan on 04/03/22.
//

import SwiftUI

enum TransactionCategory: String {
    case Grocery = "Grocery"
    case Car_Maintenance = "Car Maintenance"
    case Bills = "Bills"
    case Insurance = "Insurance"
}

struct IndividualTransactionData {
    var transactionAmount: String
    var transactionCategoryName: String
    var transactionShortDetail: String
    var transactionCategoryImage: Image
}

extension IndividualTransactionData {
    static let transaction1 = IndividualTransactionData(transactionAmount: "5", transactionCategoryName: TransactionCategory.Grocery.rawValue, transactionShortDetail: "Dairy Milk", transactionCategoryImage: Image(systemName: "cart"))
    static let transaction2 = IndividualTransactionData(transactionAmount: "7500", transactionCategoryName: TransactionCategory.Car_Maintenance.rawValue, transactionShortDetail: "Fabia Annual Maintenance", transactionCategoryImage: Image(systemName: "car.circle"))
    static let transaction3 = IndividualTransactionData(transactionAmount: "6376", transactionCategoryName: TransactionCategory.Insurance.rawValue, transactionShortDetail: "Fabia Insurance", transactionCategoryImage: Image(systemName: "cross"))
    static let transaction4 = IndividualTransactionData(transactionAmount: "1728", transactionCategoryName: TransactionCategory.Bills.rawValue, transactionShortDetail: "Asianet BroadBand", transactionCategoryImage: Image(systemName: "wifi"))
}

struct TransactionData: Identifiable {
    var id = UUID()
    var transactionDate: String
    var individualTransactions: [IndividualTransactionData]
}

extension TransactionData {
    static let allTransactions = [
        TransactionData(transactionDate: "03 March, 2022", individualTransactions: [IndividualTransactionData.transaction1, IndividualTransactionData.transaction2]),
        TransactionData(transactionDate: "02 March, 2022",individualTransactions:  [IndividualTransactionData.transaction3]),
        TransactionData(transactionDate: "01 March, 2022", individualTransactions:  [IndividualTransactionData.transaction4])
    ]
}




