//
//  HomeViewController.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/09.
//

import UIKit


var items = ["2학년 전체", "2-4", "2-4 마이크로프로세서", "물리", "2- 4 성공적인 직업생활"]
var teacherItems = ["박순주", "이지은", "나백환", "봉만영", "김소형"]
var titleItem = ""

class HomeViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.collectionView.collectionViewLayout = createCompositionalLayout()
    }
    
    
}


extension HomeViewController {

    // 콤포지셔널 레이아웃 설정
    func createCompositionalLayout() -> UICollectionViewLayout {
        print("createCompositionalLayout() called")
        // 콤포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout{
            // 만들게 되면 튜플 (키: 값, 키: 값) 의 묶음으로 들어옴 반환 하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야함
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in

            // 아이템에 대한 사이즈 - absolute 는 고정값, estimated 는 추측, fraction 퍼센트
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))

            // 위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)

            // 아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10)

            // 변경할 부분
            let groupHeight =  NSCollectionLayoutDimension.fractionalWidth(1/2)

            // 그룹사이즈
            let grouSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupHeight)

            // 그룹사이즈로 그룹 만들기
            // let group = NSCollectionLayoutGroup.horizontal(layoutSize: grouSize, subitems: [item, item, item])

            // 변경할 부분
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: grouSize, subitem: item, count: 2)
            print("1")

            // 그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)
            // section.orthogonalScrollingBehavior = .groupPaging

            // 섹션에 대한 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            return section
        }
        return layout
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 13
        cell.titleLabel.textColor = .black
        cell.teacherLabel.textColor = .black
        cell.titleLabel.text = items[indexPath.row ]
        cell.teacherLabel.text = teacherItems[indexPath.row]
        cell.backgroundColor = .white
        cell.layer.borderWidth = 2
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleItem = items[indexPath.row]
//        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ClassViewController") as? ClassViewController else { return }
//        self.navigationController?.pushViewController(vc, animated: true)
//        let vc = ClassViewController()
//        navigationController?.pushViewController(vc, animated: true)
    }
}


