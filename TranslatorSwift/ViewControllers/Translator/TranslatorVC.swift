//
//  TranslatorVC.swift
//  TranslatorSwift
//
//  Created by Mohameh on 28/09/2021.
//

import UIKit

public class TranslatorVC: UIViewController
{
    @IBOutlet weak var fromButton: UIButton!
    @IBOutlet weak var toButton: UIButton!
    @IBOutlet weak var fromTextView: UITextView!
    @IBOutlet weak var toTextView: UITextView!

    public var apiKey = ""
    var fromLang = "en"
    var toLang = "es"

    public override func viewDidLoad()
    {
        
    }
    
    @IBAction func goLanguage(button: UIButton)
    {
        let bundle = Bundle(for: type(of:self))
        let s = UIStoryboard(name: "Language", bundle: bundle)
        let vwLanguage = s.instantiateViewController(withIdentifier: "Language") as! LanguageVC
        vwLanguage.delegate = self
        if button == self.fromButton
        {
            vwLanguage.isDestination = false
        }
        else
        {
            vwLanguage.isDestination = true
        }
        self.present(vwLanguage, animated: true, completion: nil)
    }
    
    func translate(text: String)
    {
        let headers = [
            "x-rapidapi-host": "google-translate20.p.rapidapi.com",
            "x-rapidapi-key": self.apiKey
        ]
        let escapedString = text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        let request = NSMutableURLRequest(url: NSURL(string: "https://google-translate20.p.rapidapi.com/translate?text=\(escapedString)&tl=\(toLang)&sl=\(fromLang)")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil)
            {
                DispatchQueue.main.async {
                    self.fromTextView.resignFirstResponder()
                    self.toTextView.text = text
                }
            }
            else
            {
                let httpResponse = try! JSONSerialization.jsonObject(with: data!) as! [String : Any]
                if let responseData = httpResponse["data"] as? [String : Any]
                {
                    let code = responseData["code"] as! Int
                    if code == 200
                    {
                        let translation = responseData["translation"] as! String
                        DispatchQueue.main.async {
                            self.fromTextView.resignFirstResponder()
                            self.toTextView.text = translation
                        }
                    }
                    else
                    {
                        DispatchQueue.main.async {
                            self.fromTextView.resignFirstResponder()
                            self.toTextView.text = text
                        }
                    }
                }
                else
                {
                    DispatchQueue.main.async {
                        self.fromTextView.resignFirstResponder()
                        self.toTextView.text = text
                    }
                }
            }
        })
        dataTask.resume()
    }
}

extension TranslatorVC: LanguageSelectorDelegate
{
    func didSelect(language: [String: String], destination: Bool)
    {
        if destination
        {
            self.toLang = language["code"]!
            self.toButton.setTitle(language["name"], for: .normal)
        }
        else
        {
            self.fromLang = language["code"]!
            self.fromButton.setTitle(language["name"], for: .normal)
        }
        self.translate(text: self.fromTextView.text)
    }
}

extension TranslatorVC: UITextViewDelegate
{
    public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
    {
        if text == "\n"
        {
            self.translate(text: self.fromTextView.text)
            return false
        }
        return true
    }
}
