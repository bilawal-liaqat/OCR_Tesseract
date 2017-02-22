//
//  ViewController.swift
//  ORCTesting
//
//  Created by Bilawal Liaqat on 2/22/17.
//  Copyright © 2017 Bilawal Liaqat. All rights reserved.
//

import UIKit
import TesseractOCR


class ViewController: UIViewController , G8TesseractDelegate{
    @IBOutlet weak var tvText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

    
//        let tesseract:G8Tesseract = G8Tesseract(language:"eng");
//        //tesseract.language = "eng+ita";
//        tesseract.delegate = self;
//        tesseract.charWhitelist = "01234567890";
//        tesseract.image = UIImage(named: "two.gif");
//        tesseract.recognize();

       
        let tesseract:G8Tesseract = G8Tesseract(language:"eng")
        tesseract.engineMode = .tesseractCubeCombined
        tesseract.pageSegmentationMode = .auto
        tesseract.maximumRecognitionTime = 60.0
        tesseract.charWhitelist = "01234567890";
        let image:UIImage =  UIImage(named: "one.png")!;
        tesseract.image = image.g8_blackAndWhite()
        tesseract.recognize()
        
        

        NSLog("%@", tesseract.recognizedText);
    
        self.tvText.text = tesseract.recognizedText
    }
    
    func shouldCancelImageRecognitionForTesseract(tesseract: G8Tesseract!) -> Bool {
        return false; // return true if you need to interrupt tesseract before it finishes
    }
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

