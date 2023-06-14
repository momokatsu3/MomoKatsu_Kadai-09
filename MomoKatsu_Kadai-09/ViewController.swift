//
//  ViewController.swift
//  MomoKatsu_Kadai-09 改修版
//  Created by モモカツ on 2023/06/14.
// Part9 Modal(モーダル)画面で都道府県を選択するアプリ

// 【Swift/Xcode超入門】画面遷移するアプリを作ってみよう
// https://satoriku.com/app-dev-step4/

import UIKit

class ViewController: UIViewController {

    // 1. 遷移先に渡したい値を格納する変数を用意
    var selsectTablaValue: String = "未選択"

    // 選択したテーブルビューを試験的に表示するラベル
    @IBOutlet weak var displaySelsectValue: UILabel! 

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // コンテンツビューが画面に表示される前に実行する必要のある操作を実行
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //print ("都市選択画面のテーブルビューで選択した値：'", selsectTablaValue, "'")
        displaySelsectValue.text = "\(selsectTablaValue)"
    }

}

