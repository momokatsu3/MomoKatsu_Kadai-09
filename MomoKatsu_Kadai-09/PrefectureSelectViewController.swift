//
//  PrefectureSelectViewController.swift
//  MomoKatsu_Kadai-09 改修版_01
//  Created by モモカツ on 2023/06/15.

import UIKit

class PrefectureSelectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

     // テーブルビューに表示データ
    var dataList = ["東京都","神奈川県", "埼玉県", "千葉県"]

    private(set) var selectedPrefecture: String?

    // テーブルビューに表示するデータを返すメソッド（スクロールなどでページを更新する必要が出るたびに呼び出される）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを取得する
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for:indexPath as IndexPath) as UITableViewCell
        cell.textLabel?.text = dataList[indexPath.row]
        //print(cell)
        return cell
    }

    // テーブルビューに表示するデータ個数を返すメソッド
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        //print(dataList.count)
        return dataList.count
    }

    // テーブルビューのデータ選択後に呼び出されるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPrefecture = dataList[indexPath.row]

        performSegue(withIdentifier: "didSelectPrefecture", sender: nil)
    }

    // キャンセルを選択した場合
    @IBAction func tapCanselButtonItems(_ sender: Any) {
        // モーダル遷移で元に画面遷移
        //（退出させる(dismiss)、アニメーションありで、完了した後の処理なし）
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
