//
//  ModalViewController.swift
//  MomoKatsu_Kadai-09 改修版
//  Created by モモカツ on 2023/06/14.

import UIKit

class PrefectureSelectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
     // テーブルビューに表示データ
    var dataList = ["東京都","神奈川県", "埼玉県", "千葉県"]

    // テーブルビューに表示するデータを返すメソッド（スクロールなどでページを更新する必要が出るたびに呼び出される）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを取得する
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for:indexPath as IndexPath) as UITableViewCell
        cell.textLabel?.text = dataList[indexPath.row]
        return cell
    }

    // テーブルビューに表示するデータ個数を返すメソッド
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return dataList.count
    }

    // テーブルビューのデータ選択後に呼び出されるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let selectData = tableView.cellForRow(at: indexPath as IndexPath)!.textLabel!.text

        //print("\(selectData!)が呼び出されました。 ', '", selectData!, "'")

        let nextView = storyboard?.instantiateViewController(withIdentifier: "testView") as! ViewController
        nextView.modalTransitionStyle = .crossDissolve
        nextView.modalPresentationStyle = .fullScreen

        // ViewController.swift内の変数selsectTablaValueに選択都市名をを代入
        nextView.selsectTablaValue = selectData!

        //遷移を実行
        self.present(nextView, animated: true, completion: nil)

    }

    // キャンセルを選択した場合
    @IBAction func tapCanselButtonItems(_ sender: Any) {
        // モーダル遷移で元に画面遷移
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
