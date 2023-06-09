//
//  ModalViewController.swift
//  MomoKatsu_Kadai-09
//  Created by モモカツ on 2023/06/07.
// 【Swift】Table Viewの使い方。データを目次のように並べて選択できる入れ物。
// https://hajihaji-lemon.com/swift/ui-table-view/
// 【Swift】UITableViewDelegateの使い方。テーブルのセルが選択されたときにイベントを発生させる。
// https://hajihaji-lemon.com/swift/uitableviewdelegate/
//　【Swift 初心者】[超簡単] UITableViewのセルをタップした時のアクション
//　https://tech.playground.style/swift/tableview-didselectroeat-beginner-alert/

import UIKit

class CitySelectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // テーブルビューに表示データ
    var dataList = ["東京都","神奈川県", "埼玉県", "千葉県"]

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
       // print(dataList.count)
        return dataList.count
    }

    // テーブルビューのデータ選択後に呼び出されるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // 以下では、この関数が実行できなかった。！！
    //private func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectData = tableView.cellForRow(at: indexPath as IndexPath)!.textLabel!.text
        print("\(selectData!)が呼び出されました。")

        // AppDelegateに用意変数に渡したい値を代入
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //appDelegateの変数を操作
        appDelegate.selsectTablaValueDelgate = selectData!

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
