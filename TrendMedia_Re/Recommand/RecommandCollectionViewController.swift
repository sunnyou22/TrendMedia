//
//  RecommandCollectionViewController.swift
//  TrendMedia_Re
//
//  Created by 방선우 on 2022/07/20.
//


import UIKit
import Toast
import Kingfisher

class RecommandCollectionViewController: UICollectionViewController {

    //이미지 넣기 라이브러리 많을 수록 이미지 뜨는 속도가 느림
    var imageURL = "http://image.kyobobook.co.kr/images/book/large/658/l9788901243658.jpg" // 애셋에 없어서 용량에 문제가 없음
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 셀의 레이아웃은 화면이 뜨기전에 보여줘야함
        // 컬렉션부의 셀 크기, 셀 사이 간격 등 설정
        // inse
        
        let layout = UICollectionViewFlowLayout()
//        let width = UIScreen.main.bounds.width / 3  // 디바이스를 정갈하게 3으로 나눔
        let spacing:CGFloat = 8 //셀과 셀사이
        let width = UIScreen.main.bounds.width - (spacing * 4) // 인셋과 셀과의 간격 총 4개
        // 셀이 가진 사이즈 이후 비율로 나누기
        layout.itemSize = CGSize(width: width / 3, height: (width / 3) * 1.2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout // 설정된 레이아웃을 전달해줌
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommandCollectionViewCell", for: indexPath) as? RecommandCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.postImageView.backgroundColor = .orange
        
        //라이브러리
        let url = URL(string: imageURL)
        cell.postImageView.kf.setImage(with: url)
        
        return cell
        
    }
    
    //테이블뷰에서는 didSelectRowAt
    // 얼럿으로 해도되는데 얼럿은 사용자가 명확하게 인지해야할때 이거는 무의식적으로 인지할때
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.view.makeToast("\(indexPath.item)번째 셀을 선택했습니당", duration: 3, position: .center)
    }
}

