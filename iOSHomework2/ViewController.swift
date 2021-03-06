//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(membernamearray: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = secretNametoEmoji(membernamearray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    var name = ""
    
    func secretNameLetter (membernamearray:[String])-> String
    {
            for i in 0..<membersNamesArray.count {
                name += String(membersNamesArray[i].prefix(1))
            }
            return name
        
        }
    

    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
   
    var emojisWithLetter = ["A":"💜","B":"💧","C":"☔️","D":"🌈","E":"🏄‍♂️","F":"🪁","G":"⛸","H":"🥌","I":"🎣","J":"💽","K":"🏛","L":"🚩","M": "🕓","N":"🎊","O":"🧸","P":"🖼","Q":"🛍","R":"💝","S":"☯️","T":"🟣","U":"♥️","V":"🌅","W":"◼️","X":"🧩","Y":"🎹","Z":"🖥"]
    var finalstring = ""
    var firstchar = ""
    func secretNametoEmoji (membernamearray:[String])-> String {
       for i in membersNamesArray {

        firstchar =  (String(i.prefix(1)).uppercased())
        for (letter, emoji) in emojisWithLetter {
            if letter == firstchar {
                finalstring.append(emoji)}
        }
        }
        return finalstring
        
    }

 
    // MARK: -   النهاية
    
    // bonus

        func encryptWith(emoji : Bool, array : [ String]) -> String {
            if emoji{
                return secretNametoEmoji(membernamearray: membersNamesArray)}
                else{
                return secretNameLetter(membernamearray: membersNamesArray)}
}







}

