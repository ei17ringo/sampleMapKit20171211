//
//  ViewController.swift
//  sampleMapKit
//
//  Created by Eriko Ichinohe on 2018/01/23.
//  Copyright © 2018年 Eriko Ichinohe. All rights reserved.
//

import UIKit
import MapKit //地図専用のフレームワーク

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //中心となる場所（アヤラ）の座標オブジェクトを作成
        let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        
        // 縮尺を設定
        let span = MKCoordinateSpanMake(0.01, 0.01)
        
        // 範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodinate, span)
        
        // MapViewに範囲オブジェクトを設定
        myMap.setRegion(region, animated: true)
     
        //アヤラにピンを立てる
        
        //ピンオブジェクトを作成
        let ayalaPin = MKPointAnnotation()
        
        //ピンの座標を設定
//        ayalaPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        ayalaPin.coordinate = coodinate //上のコードと同じ意味
        
        //タイトル、サブタイトルを設定
        ayalaPin.title = "Ayala"
        ayalaPin.subtitle = "買い物便利"
        
        //myMapにピンを追加
        myMap.addAnnotation(ayalaPin)
        
        //TODO:2Quadにピンを立ててみましょう
        //ピンオブジェクトを作成
        let QuadPin = MKPointAnnotation()
        
        //ピンの座標を設定
        //        ayalaPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        QuadPin.coordinate = CLLocationCoordinate2DMake(10.314441, 123.905421)
        
        //タイトル、サブタイトルを設定
        QuadPin.title = "2Quad"
        QuadPin.subtitle = "NexSeedあるよ"
        
        //myMapにピンを追加
        myMap.addAnnotation(QuadPin)
        
        myMap.mapType = MKMapType.standard
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

