//
//  BillsListViewController.swift
//  FAHackDays
//
//  Created by Matt Beaney on 24/02/2021.
//

import UIKit

class BillsListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var bills: [Bill] = []
    let billsService = BillsService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableView()
        self.fetchBills()
    }

    private func fetchBills() {
        billsService.fetchCharacters { bills in

            DispatchQueue.main.async {

                self.bills = bills

                self.tableView.reloadData()
            }
        }
    }
    
    private func configureTableView() {
        let characterNib = UINib(nibName: "ComplicatedBillTableViewCell", bundle: nil)
        tableView.register(characterNib, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension BillsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bills.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ComplicatedBillTableViewCell
        let bill = bills[indexPath.row]
        cell.configure(bill: bill)
        return cell
    }
}

extension BillsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let bill = bills[indexPath.row]
        
        let storyboard = UIStoryboard(name: "Bills", bundle: nil)

        if let detailViewController = storyboard.instantiateViewController(identifier: "BillDetailViewController") as? BillDetailViewController {

            detailViewController.title = bill.reference
            detailViewController.bill = bill
            self.navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}
