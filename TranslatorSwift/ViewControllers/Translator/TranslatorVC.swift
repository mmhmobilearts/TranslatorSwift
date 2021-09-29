//
//  TranslatorVC.swift
//  TranslatorSwift
//
//  Created by Mohameh on 28/09/2021.
//

import UIKit
import MLKitTranslate

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
        let germanArabicOptions = TranslatorOptions(sourceLanguage: .german, targetLanguage: .arabic)
        germanArabicTranslator = Translator.translator(options: germanArabicOptions)
        germanArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an german-chinese translator:
        let germanChineseOptions = TranslatorOptions(sourceLanguage: .german, targetLanguage: .chinese)
        germanChineseTranslator = Translator.translator(options: germanChineseOptions)
        germanChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an german-spanish translator:
        let germanSpanishOptions = TranslatorOptions(sourceLanguage: .german, targetLanguage: .spanish)
        germanSpanishTranslator = Translator.translator(options: germanSpanishOptions)
        germanSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an german-english translator:
        let germanEnglishOptions = TranslatorOptions(sourceLanguage: .german, targetLanguage: .english)
        germanEnglishTranslator = Translator.translator(options: germanEnglishOptions)
        germanEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an german-french translator:
        let germanFrenchOptions = TranslatorOptions(sourceLanguage: .german, targetLanguage: .french)
        germanFrenchTranslator = Translator.translator(options: germanFrenchOptions)
        germanFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        
        // Create an arabic-german translator:
        let arabicGermanOptions = TranslatorOptions(sourceLanguage: .arabic, targetLanguage: .german)
        arabicGermanTranslator = Translator.translator(options: arabicGermanOptions)
        arabicGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an arabic-chinese translator:
        let arabicChineseOptions = TranslatorOptions(sourceLanguage: .arabic, targetLanguage: .chinese)
        arabicChineseTranslator = Translator.translator(options: arabicChineseOptions)
        arabicChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an arabic-spanish translator:
        let arabicSpanishOptions = TranslatorOptions(sourceLanguage: .arabic, targetLanguage: .spanish)
        arabicSpanishTranslator = Translator.translator(options: arabicSpanishOptions)
        arabicSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an arabic-english translator:
        let arabicEnglishOptions = TranslatorOptions(sourceLanguage: .arabic, targetLanguage: .english)
        arabicEnglishTranslator = Translator.translator(options: arabicEnglishOptions)
        arabicEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an arabic-french translator:
        let arabicFrenchOptions = TranslatorOptions(sourceLanguage: .arabic, targetLanguage: .french)
        arabicFrenchTranslator = Translator.translator(options: arabicFrenchOptions)
        arabicFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        
        // Create an chinese-german translator:
        let chineseGermanOptions = TranslatorOptions(sourceLanguage: .chinese, targetLanguage: .german)
        chineseGermanTranslator = Translator.translator(options: chineseGermanOptions)
        chineseGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an chinese-arabic translator:
        let chineseArabicOptions = TranslatorOptions(sourceLanguage: .chinese, targetLanguage: .arabic)
        chineseArabicTranslator = Translator.translator(options: chineseArabicOptions)
        chineseArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an chinese-spanish translator:
        let chineseSpanishOptions = TranslatorOptions(sourceLanguage: .chinese, targetLanguage: .spanish)
        chineseSpanishTranslator = Translator.translator(options: chineseSpanishOptions)
        chineseSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an chinese-english translator:
        let chineseEnglishOptions = TranslatorOptions(sourceLanguage: .chinese, targetLanguage: .english)
        chineseEnglishTranslator = Translator.translator(options: chineseEnglishOptions)
        chineseEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an chinese-french translator:
        let chineseFrenchOptions = TranslatorOptions(sourceLanguage: .chinese, targetLanguage: .french)
        chineseFrenchTranslator = Translator.translator(options: chineseFrenchOptions)
        chineseFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }

        // Create an french-german translator:
        let frenchGermanOptions = TranslatorOptions(sourceLanguage: .french, targetLanguage: .german)
        frenchGermanTranslator = Translator.translator(options: frenchGermanOptions)
        frenchGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an french-arabic translator:
        let frenchArabicOptions = TranslatorOptions(sourceLanguage: .french, targetLanguage: .arabic)
        frenchArabicTranslator = Translator.translator(options: frenchArabicOptions)
        frenchArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an french-spanish translator:
        let frenchSpanishOptions = TranslatorOptions(sourceLanguage: .french, targetLanguage: .spanish)
        frenchSpanishTranslator = Translator.translator(options: frenchSpanishOptions)
        frenchSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an french-english translator:
        let frenchEnglishOptions = TranslatorOptions(sourceLanguage: .french, targetLanguage: .english)
        frenchEnglishTranslator = Translator.translator(options: frenchEnglishOptions)
        frenchEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an french-chinese translator:
        let frenchChineseOptions = TranslatorOptions(sourceLanguage: .french, targetLanguage: .chinese)
        frenchChineseTranslator = Translator.translator(options: frenchChineseOptions)
        frenchChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        
        // Create an english-german translator:
        let englishGermanOptions = TranslatorOptions(sourceLanguage: .english, targetLanguage: .german)
        englishGermanTranslator = Translator.translator(options: englishGermanOptions)
        englishGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an english-arabic translator:
        let englishArabicOptions = TranslatorOptions(sourceLanguage: .english, targetLanguage: .arabic)
        englishArabicTranslator = Translator.translator(options: englishArabicOptions)
        englishArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an english-spanish translator:
        let englishSpanishOptions = TranslatorOptions(sourceLanguage: .english, targetLanguage: .spanish)
        englishSpanishTranslator = Translator.translator(options: englishSpanishOptions)
        englishSpanishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an english-french translator:
        let englishFrenchOptions = TranslatorOptions(sourceLanguage: .english, targetLanguage: .french)
        englishFrenchTranslator = Translator.translator(options: englishFrenchOptions)
        englishFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an english-chinese translator:
        let englishChineseOptions = TranslatorOptions(sourceLanguage: .english, targetLanguage: .chinese)
        englishChineseTranslator = Translator.translator(options: englishChineseOptions)
        englishChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        
        // Create an spanish-german translator:
        let spanishGermanOptions = TranslatorOptions(sourceLanguage: .spanish, targetLanguage: .german)
        spanishGermanTranslator = Translator.translator(options: spanishGermanOptions)
        spanishGermanTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an spanish-arabic translator:
        let spanishArabicOptions = TranslatorOptions(sourceLanguage: .spanish, targetLanguage: .arabic)
        spanishArabicTranslator = Translator.translator(options: spanishArabicOptions)
        spanishArabicTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an spanish-english translator:
        let spanishEnglishOptions = TranslatorOptions(sourceLanguage: .spanish, targetLanguage: .english)
        spanishEnglishTranslator = Translator.translator(options: spanishEnglishOptions)
        spanishEnglishTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an spanish-french translator:
        let spanishFrenchOptions = TranslatorOptions(sourceLanguage: .spanish, targetLanguage: .french)
        spanishFrenchTranslator = Translator.translator(options: spanishFrenchOptions)
        spanishFrenchTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            // Model downloaded successfully. Okay to start translating.
        }
        // Create an spanish-chinese translator:
        let spanishChineseOptions = TranslatorOptions(sourceLanguage: .spanish, targetLanguage: .chinese)
        spanishChineseTranslator = Translator.translator(options: spanishChineseOptions)
        spanishChineseTranslator.downloadModelIfNeeded(with: conditions) { error in
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
