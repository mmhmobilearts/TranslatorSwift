//
//  TranslatorVC.swift
//  TranslatorSwift
//
//  Created by Mohameh on 28/09/2021.
//

import UIKit
import Firebase

public class TranslatorVC: UIViewController
{
    @IBOutlet weak var fromButton: UIButton!
    @IBOutlet weak var toButton: UIButton!
    @IBOutlet weak var fromTextView: UITextView!
    @IBOutlet weak var toTextView: UITextView!

    var englishChineseTranslator: Translator!
    var englishArabicTranslator: Translator!
    var englishGermanTranslator: Translator!
    var englishFrenchTranslator: Translator!
    var englishSpanishTranslator: Translator!
    var chineseEnglishTranslator: Translator!
    var chineseArabicTranslator: Translator!
    var chineseGermanTranslator: Translator!
    var chineseFrenchTranslator: Translator!
    var chineseSpanishTranslator: Translator!
    var arabicChineseTranslator: Translator!
    var arabicEnglishTranslator: Translator!
    var arabicGermanTranslator: Translator!
    var arabicFrenchTranslator: Translator!
    var arabicSpanishTranslator: Translator!
    var germanChineseTranslator: Translator!
    var germanArabicTranslator: Translator!
    var germanEnglishTranslator: Translator!
    var germanFrenchTranslator: Translator!
    var germanSpanishTranslator: Translator!
    var frenchChineseTranslator: Translator!
    var frenchArabicTranslator: Translator!
    var frenchEnglishTranslator: Translator!
    var frenchGermanTranslator: Translator!
    var frenchSpanishTranslator: Translator!
    var spanishChineseTranslator: Translator!
    var spanishArabicTranslator: Translator!
    var spanishEnglishTranslator: Translator!
    var spanishGermanTranslator: Translator!
    var spanishFrenchTranslator: Translator!
    
    var fromLang = "English"
    var toLang = "Spanish"

    public override func viewDidLoad()
    {
        let conditions = ModelDownloadConditions(
            allowsCellularAccess: false,
            allowsBackgroundDownloading: true
        )
        
        // Create an german-arabic translator:
        let germanArabicOptions = TranslatorOptions(sourceLanguage: .de, targetLanguage: .ar)
        germanArabicTranslator = NaturalLanguage.naturalLanguage().translator(options: germanArabicOptions)
        germanArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an german-chinese translator:
        let germanChineseOptions = TranslatorOptions(sourceLanguage: .de, targetLanguage: .zh)
        germanChineseTranslator = NaturalLanguage.naturalLanguage().translator(options: germanChineseOptions)
        germanChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an german-spanish translator:
        let germanSpanishOptions = TranslatorOptions(sourceLanguage: .de, targetLanguage: .es)
        germanSpanishTranslator = NaturalLanguage.naturalLanguage().translator(options: germanSpanishOptions)
        germanSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an german-english translator:
        let germanEnglishOptions = TranslatorOptions(sourceLanguage: .de, targetLanguage: .en)
        germanEnglishTranslator = NaturalLanguage.naturalLanguage().translator(options: germanEnglishOptions)
        germanEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an german-french translator:
        let germanFrenchOptions = TranslatorOptions(sourceLanguage: .de, targetLanguage: .fr)
        germanFrenchTranslator = NaturalLanguage.naturalLanguage().translator(options: germanFrenchOptions)
        germanFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        
        // Create an arabic-german translator:
        let arabicGermanOptions = TranslatorOptions(sourceLanguage: .ar, targetLanguage: .de)
        arabicGermanTranslator = NaturalLanguage.naturalLanguage().translator(options: arabicGermanOptions)
        arabicGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an arabic-chinese translator:
        let arabicChineseOptions = TranslatorOptions(sourceLanguage: .ar, targetLanguage: .zh)
        arabicChineseTranslator = NaturalLanguage.naturalLanguage().translator(options: arabicChineseOptions)
        arabicChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an arabic-spanish translator:
        let arabicSpanishOptions = TranslatorOptions(sourceLanguage: .ar, targetLanguage: .es)
        arabicSpanishTranslator = NaturalLanguage.naturalLanguage().translator(options: arabicSpanishOptions)
        arabicSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an arabic-english translator:
        let arabicEnglishOptions = TranslatorOptions(sourceLanguage: .ar, targetLanguage: .en)
        arabicEnglishTranslator = NaturalLanguage.naturalLanguage().translator(options: arabicEnglishOptions)
        arabicEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an arabic-french translator:
        let arabicFrenchOptions = TranslatorOptions(sourceLanguage: .ar, targetLanguage: .fr)
        arabicFrenchTranslator = NaturalLanguage.naturalLanguage().translator(options: arabicFrenchOptions)
        arabicFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        
        // Create an chinese-german translator:
        let chineseGermanOptions = TranslatorOptions(sourceLanguage: .zh, targetLanguage: .de)
        chineseGermanTranslator = NaturalLanguage.naturalLanguage().translator(options: chineseGermanOptions)
        chineseGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an chinese-arabic translator:
        let chineseArabicOptions = TranslatorOptions(sourceLanguage: .zh, targetLanguage: .ar)
        chineseArabicTranslator = NaturalLanguage.naturalLanguage().translator(options: chineseArabicOptions)
        chineseArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an chinese-spanish translator:
        let chineseSpanishOptions = TranslatorOptions(sourceLanguage: .zh, targetLanguage: .es)
        chineseSpanishTranslator = NaturalLanguage.naturalLanguage().translator(options: chineseSpanishOptions)
        chineseSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an chinese-english translator:
        let chineseEnglishOptions = TranslatorOptions(sourceLanguage: .zh, targetLanguage: .en)
        chineseEnglishTranslator = NaturalLanguage.naturalLanguage().translator(options: chineseEnglishOptions)
        chineseEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an chinese-french translator:
        let chineseFrenchOptions = TranslatorOptions(sourceLanguage: .zh, targetLanguage: .fr)
        chineseFrenchTranslator = NaturalLanguage.naturalLanguage().translator(options: chineseFrenchOptions)
        chineseFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }

        // Create an french-german translator:
        let frenchGermanOptions = TranslatorOptions(sourceLanguage: .fr, targetLanguage: .de)
        frenchGermanTranslator = NaturalLanguage.naturalLanguage().translator(options: frenchGermanOptions)
        frenchGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an french-arabic translator:
        let frenchArabicOptions = TranslatorOptions(sourceLanguage: .fr, targetLanguage: .ar)
        frenchArabicTranslator = NaturalLanguage.naturalLanguage().translator(options: frenchArabicOptions)
        frenchArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an french-spanish translator:
        let frenchSpanishOptions = TranslatorOptions(sourceLanguage: .fr, targetLanguage: .es)
        frenchSpanishTranslator = NaturalLanguage.naturalLanguage().translator(options: frenchSpanishOptions)
        frenchSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an french-english translator:
        let frenchEnglishOptions = TranslatorOptions(sourceLanguage: .fr, targetLanguage: .en)
        frenchEnglishTranslator = NaturalLanguage.naturalLanguage().translator(options: frenchEnglishOptions)
        frenchEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an french-chinese translator:
        let frenchChineseOptions = TranslatorOptions(sourceLanguage: .fr, targetLanguage: .zh)
        frenchChineseTranslator = NaturalLanguage.naturalLanguage().translator(options: frenchChineseOptions)
        frenchChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        
        // Create an english-german translator:
        let englishGermanOptions = TranslatorOptions(sourceLanguage: .en, targetLanguage: .de)
        englishGermanTranslator = NaturalLanguage.naturalLanguage().translator(options: englishGermanOptions)
        englishGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an english-arabic translator:
        let englishArabicOptions = TranslatorOptions(sourceLanguage: .en, targetLanguage: .ar)
        englishArabicTranslator = NaturalLanguage.naturalLanguage().translator(options: englishArabicOptions)
        englishArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an english-spanish translator:
        let englishSpanishOptions = TranslatorOptions(sourceLanguage: .en, targetLanguage: .es)
        englishSpanishTranslator = NaturalLanguage.naturalLanguage().translator(options: englishSpanishOptions)
        englishSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an english-english translator:
        let englishFrenchOptions = TranslatorOptions(sourceLanguage: .en, targetLanguage: .fr)
        englishFrenchTranslator = NaturalLanguage.naturalLanguage().translator(options: englishFrenchOptions)
        englishFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an english-chinese translator:
        let englishChineseOptions = TranslatorOptions(sourceLanguage: .en, targetLanguage: .zh)
        englishChineseTranslator = NaturalLanguage.naturalLanguage().translator(options: englishChineseOptions)
        englishChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
    }
    
    @IBAction func goLanguage(_: UIButton)
    {
        let bundle = Bundle(for: type(of:self))
        let s = UIStoryboard(name: "Language", bundle: bundle)
        let vwLanguage = s.instantiateViewController(withIdentifier: "Language") as! LanguageVC
        vwLanguage.delegate = self
        self.present(vwLanguage, animated: true, completion: nil)
    }
    
    func translate(text: String)
    {
        if fromLang == "German"
        {
            if toLang == "Arabic"
            {
                germanArabicTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "English"
            {
                germanEnglishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "French"
            {
                germanFrenchTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "Spanish"
            {
                germanSpanishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "Chinese"
            {
                germanSpanishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else
            {
                self.toTextView.text = text
            }
        }
        else if fromLang == "Chinese"
        {
            if toLang == "Arabic"
            {
                chineseArabicTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "English"
            {
                chineseEnglishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "French"
            {
                chineseFrenchTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "Spanish"
            {
                chineseSpanishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "German"
            {
                chineseGermanTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else
            {
                self.toTextView.text = text
            }
        }
        else if fromLang == "Arabic"
        {
            if toLang == "German"
            {
                arabicGermanTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "English"
            {
                arabicEnglishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "French"
            {
                arabicFrenchTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "Spanish"
            {
                arabicSpanishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "Chinese"
            {
                arabicChineseTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else
            {
                self.toTextView.text = text
            }
        }
        else if fromLang == "French"
        {
            if toLang == "Arabic"
            {
                frenchArabicTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "English"
            {
                frenchEnglishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "German"
            {
                frenchGermanTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "Spanish"
            {
                frenchSpanishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "Chinese"
            {
                frenchChineseTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else
            {
                self.toTextView.text = text
            }
        }
        else if fromLang == "Spanish"
        {
            if toLang == "Arabic"
            {
                spanishArabicTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "English"
            {
                spanishEnglishTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "French"
            {
                spanishFrenchTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "German"
            {
                spanishGermanTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else if toLang == "Chinese"
            {
                spanishChineseTranslator.translate(text) { translatedText, error in
                    guard error == nil, let translatedText = translatedText else { return }
                    DispatchQueue.main.async {
                        self.toTextView.text = translatedText
                    }
                }
            }
            else
            {
                self.toTextView.text = text
            }
        }
    }
}

extension TranslatorVC: LanguageSelectorDelegate
{
    func didSelect(language: String, destination: Bool)
    {
        if destination
        {
            self.toLang = language
            self.toButton.setTitle(language, for: .normal)
        }
        else
        {
            self.fromLang = language
            self.fromButton.setTitle(language, for: .normal)
        }
        self.translate(text: self.fromTextView.text)
    }
}

extension TranslatorVC: UITextViewDelegate
{
    public func textViewDidChange(_ textView: UITextView)
    {
        textView.resignFirstResponder()
        self.translate(text: self.fromTextView.text)
    }
}
