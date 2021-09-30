//
//  LanguageVC.swift
//  TranslatorSwift
//
//  Created by Mohameh on 28/09/2021.
//

import UIKit

protocol LanguageSelectorDelegate:AnyObject
{
    func didSelect(language: [String: String], destination: Bool)
}

public class LanguageVC: UIViewController
{
    @IBOutlet weak var tableView: UITableView!

    var delegate: LanguageSelectorDelegate?
    var isDestination = false

    public override func viewDidLoad()
    {
    }
}

extension LanguageVC: UITableViewDelegate
{
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        switch indexPath.row
        {
        case 0:
            self.delegate!.didSelect(language: ["name": "English", "code": "en"], destination:self.isDestination)
        case 1:
            self.delegate!.didSelect(language: ["name": "Chinese", "code": "zh"], destination:self.isDestination)
        case 2:
            self.delegate!.didSelect(language: ["name": "German", "code": "de"], destination:self.isDestination)
        case 3:
            self.delegate!.didSelect(language: ["name": "Arabic", "code": "ar"], destination:self.isDestination)
        case 4:
            self.delegate!.didSelect(language: ["name": "French", "code": "fr"], destination:self.isDestination)
        case 5:
            self.delegate!.didSelect(language: ["name": "Spanish", "code": "es"], destination:self.isDestination)
        default: break
        }
        self.dismiss(animated: true, completion: nil)
    }
}

extension LanguageVC: UITableViewDataSource
{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 6
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "Cell")

        switch indexPath.row
        {
        case 0:
            cell.textLabel?.text = "English"
        case 1:
            cell.textLabel?.text = "Chinese"
        case 2:
            cell.textLabel?.text = "German"
        case 3:
            cell.textLabel?.text = "Arabic"
        case 4:
            cell.textLabel?.text = "French"
        case 5:
            cell.textLabel?.text = "Spanish"
        default: break
        }
        
        return cell
    }
}
