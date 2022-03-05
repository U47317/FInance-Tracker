//
//  ListItemCell.swift
//  Finance Tracker
//
//  Created by Arun Mohan on 04/03/22.
//

import SwiftUI

struct ListItemCell: View {
    var individualTransaction: IndividualTransactionData
    var body: some View {
        HStack {
            
            individualTransaction.transactionCategoryImage
                .font(.system(size: 30))
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text(individualTransaction.transactionShortDetail)
                    .font(.title3)
                Text(individualTransaction.transactionCategoryName)
                    .font(.caption)
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("₹ " + individualTransaction.transactionAmount)
                    .padding()
            }
            
        }
    }
}

struct ListItemCell_Previews: PreviewProvider {
    static var previews: some View {
        ListItemCell(individualTransaction: IndividualTransactionData(transactionAmount: "56", transactionCategoryName: "Grocery", transactionShortDetail: "DiaryMilk", transactionCategoryImage: Image(systemName: "wifi")))
    }
}
