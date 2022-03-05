//
//  HomeView.swift
//  Finance Tracker
//
//  Created by Arun Mohan on 05/03/22.
//

import SwiftUI

struct HomeView: View {
    let allTransactions = TransactionData.allTransactions
    var body: some View {
        VStack {
            TopBannerView()
                .frame(maxWidth: .infinity,minHeight: 280,alignment: .top)
                .background(Color.purple)
            
            MiddleListView(allTransaction: allTransactions)
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(Color.white)
                .cornerRadius(32)
                .offset(x: 0, y: -40)
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopBannerView: View {
    var body: some View {
        VStack {
            ///Current Balance, Month year view
            HStack {
                VStack(alignment: .center, spacing: 20) {
                    Text("CURRENT BALANCE")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                    Text("₹32,425")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                    Text("March 2022")
                        .font(.headline)
                        .foregroundColor(Color.white)
                    
                }
                .padding()
            }
            
            ///Income Expense View
            HStack {
                HStack {
                    Image(systemName: "arrow.down.left.circle.fill")
                        .font(.system(size: 23))
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text("INCOME")
                            .font(.callout)
                            .foregroundColor(Color.white)
                        Text("₹42,500")
                            .font(.title3)
                            .foregroundColor(Color.white)
                    }
                }
                Spacer()
                HStack {
                    Image(systemName: "arrow.up.right.circle.fill")
                        .font(.system(size: 23))
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text("EXPENSE")
                            .font(.callout)
                            .foregroundColor(Color.white)
                        Text("₹12,421")
                            .font(.title3)
                            .foregroundColor(Color.white)
                    }
                }
            }
            .padding()
        }
    }
}

struct MiddleListView: View {
    var allTransaction: [TransactionData]
    var body: some View {
        VStack {
            List(allTransaction) { eachTransactionDay in
                Section(header: Text(eachTransactionDay.transactionDate)) {
                    ForEach(0..<eachTransactionDay.individualTransactions.count) { index in
                        ListItemCell(individualTransaction: eachTransactionDay.individualTransactions[index])
                    }
                }
                
            }
            .onAppear() {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
            .padding(.top)
        }
    }
}
