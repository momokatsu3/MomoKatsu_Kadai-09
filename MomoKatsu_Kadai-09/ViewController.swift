//
//  ViewController.swift
//  MomoKatsu_Kadai-09
//  Created by モモカツ on 2023/06/07.
// Part9 Modal(モーダル)画面で都道府県を選択するアプリ

import UIKit

class ViewController: UIViewController {

    // 選択したテーブルビューを試験的に表示するラベル
    @IBOutlet weak var displaySelsectValue: UILabel! 

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // コンテンツビューが画面に表示される前に実行する必要のある操作を実行
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //AppDelegateから変数の値を受け取る
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let selsectTablaValue = appDelegate.selsectTablaValueDelgate

        print ("モーダル画面のテーブルビューで選択した値：", selsectTablaValue)
        displaySelsectValue.text = "\(selsectTablaValue)"
    }

}

