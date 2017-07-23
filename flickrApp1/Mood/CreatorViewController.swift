//
//  CreatorViewController.swift
//  mood
//
//  Created by Simran on 7/22/17.
//  Copyright © 2017 mood. All rights reserved.
//

import UIKit

class CreatorViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var middleText: UITextField!
    @IBOutlet weak var bottomText: UITextField!
    @IBOutlet weak var newMemePhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        topText.text = textField.text
        middleText.text = textField.text
        bottomText.text = textField.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //MARK: Action

    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        topText.resignFirstResponder()
        middleText.resignFirstResponder()
        bottomText.resignFirstResponder()
    }
    
}
