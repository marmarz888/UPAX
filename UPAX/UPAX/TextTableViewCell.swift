//
//  TextTableViewCell.swift
//  UPAX
//
//  Created by Mariano Manuel on 4/8/22.
//

import UIKit

class TextTableViewCell: UITableViewCell, UITextFieldDelegate {

    static let identifier = "TextTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "TextTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func checkButton(_ sender: UIButton) {
        do {
            let regex = try NSRegularExpression(pattern: ".*[^A-Za-z ].*", options: [])
            if regex.firstMatch(in: textField.text ?? "", options: [], range: NSMakeRange(0, textField.text?.count ?? 0)) != nil {
                textField.text = "Alphabet Letters Only"
                sender.setTitle("Try Again", for: .normal)
            } else {
                sender.setTitle(("Good Job!"), for: .normal)
                if textField.text?.count == 0 {
                    sender.setTitle("Try Again", for: .normal)
                }
            }
        } catch {
            print("\(textField.text ?? "")")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        textField.placeholder = "Name..."
        textField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
