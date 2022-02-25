//
//  ViewController.swift
//  ch09Challenge
//
//  Created by 김규리 on 2022/01/19.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var lblText: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = 10 // 전체 페이지 수
        pageControl.currentPage = 0 // 현재 페이지
        pageControl.pageIndicatorTintColor = UIColor.green // 페이지를 표시하는 색상
        pageControl.currentPageIndicatorTintColor = UIColor.red // 현재 페이지를 표시하는 색상
        
        lblText.text = String(pageControl.currentPage + 1)
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        lblText.text = String(pageControl.currentPage + 1)
    }
    

}

