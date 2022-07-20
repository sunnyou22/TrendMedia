//
//  TrendMediaSearchTableViewController.swift
//  TrendMedia_Re
//
//  Created by 방선우 on 2022/07/20.
//

import UIKit

class TrendMediaSearchTableViewController: UITableViewController {
    
    // 다른 파일에 있어도 불러올 수 있음
    var movieList = MovieInfo()
    
//    [
//        Movie(movieTitile: "암살", movieRelease: "22.22.22", movieOverview: "암살줄거리", movieRuntime: 150, movieRate: 8.8),
//        Movie(movieTitile: "괴물", movieRelease: "11.11.11", movieOverview: "13123132", movieRuntime: 130, movieRate: 2.2)
//    ]
    //    ["암살", "괴물", "해리포터와 해리포터", "내 머리속의 지우개", "기묘한 이야기", "라라랜드", "라이언 일병 구하기", "외계+인"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrendMediaSearchTableViewCell", for: indexPath) as! TrendMediaSearchTableViewCell
    
        
      // 구현하고
        let data = movieList.movie[indexPath.row]
        cell.configureCell(data: data)
       
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height / 8 // 왜 main을 쓰는 거더라
    }
}
