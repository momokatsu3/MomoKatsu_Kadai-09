//
//  ViewController.swift
//  MomoKatsu_Kadai-09 改修版_01
//  Created by モモカツ on 2023/06/15.
// Part9 Modal(モーダル)画面で都道府県を選択するアプリ

import UIKit

class ViewController: UIViewController {

    // 遷移先に渡したい値を格納する変数を用意
    var selsectTablaValue: String = "未選択"

    // 選択したテーブルビューを試験的に表示するラベル
    @IBOutlet weak var displaySelsectValue: UILabel! 

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didSelectPrefecture(unwindSegue: UIStoryboardSegue) {
        guard let prefectureSelectViewController = unwindSegue.source as? PrefectureSelectViewController else { return }
        displaySelsectValue.text = prefectureSelectViewController.selectedPrefecture
    }
}
