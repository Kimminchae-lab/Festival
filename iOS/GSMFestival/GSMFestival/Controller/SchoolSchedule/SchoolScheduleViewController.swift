//
//  SchoolScheduleViewController.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/12/08.
//

import UIKit
import FSCalendar

class SchoolScheduleViewController: UIViewController {
    
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var calendarView: FSCalendar! {
        didSet{
            calendarView.delegate = self
            calendarView.dataSource = self
            calendarView.headerHeight = 50
            calendarView.appearance.headerMinimumDissolvedAlpha = 0.0
            calendarView.appearance.headerDateFormat = "YYYY년 M월"
            calendarView.appearance.headerTitleColor = .black
            calendarView.appearance.headerTitleFont = UIFont.systemFont(ofSize: 24)
            calendarView.locale = Locale(identifier: "ko_KR")
//            calendarView.backgroundColor = UIColor(red: 241/255, green: 249/255, blue: 255/255, alpha: 1)
            calendarView.backgroundColor = .white
//            calendarView.appearance.selectionColor = UIColor(red: 38/255, green: 153/255, blue: 251/255, alpha: 1)
            calendarView.appearance.todayColor = .systemGray3
            calendarView.appearance.selectionColor = .black
            calendarView.appearance.weekdayTextColor = .black
            calendarView.appearance.headerMinimumDissolvedAlpha = 0.0
            calendarView.addBorder(toSide: .top, color: .black, borderWidth: 2)
            calendarView.addBorder(toSide: .bottom, color: .black, borderWidth: 2)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
    
}

extension SchoolScheduleViewController: FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(dateFormatter.string(from: date) + " 선택됨")
        
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(dateFormatter.string(from: date) + " 해제됨")
    }
    
    func calendar(_ calendar: FSCalendar, subtitleFor date: Date) -> String? {
        switch dateFormatter.string(from: date) {
        case dateFormatter.string(from: Date()):
            return "오늘"
        case "2021-01-08":
            return "제 4회 GSM 페스티벌"
        case "2020-06-23":
            return "지각"
        case "2020-06-24":
            return "결근"
        default:
            return nil
        }
    }
    
    
}

// 원하는 뷰의 테두리 선 그리는 방법
struct BorderOptions: OptionSet {
    let rawValue: Int
    
    static let top = BorderOptions(rawValue: 1 << 0)
    static let left = BorderOptions(rawValue: 1 << 1)
    static let bottom = BorderOptions(rawValue: 1 << 2)
    static let right = BorderOptions(rawValue: 1 << 3)
    
    static let horizontal: BorderOptions = [.left, .right]
    static let vertical: BorderOptions = [.top, .bottom]
}

extension UIView {
    func addBorder(
        toSide options: BorderOptions,
        color: UIColor,
        borderWidth width: CGFloat
    ) {
        // options에 .top이 포함되어있는지 확인
        if options.contains(.top) {
            // 이미 해당 사이드에 경계선이 있는지 확인하고, 있으면 제거
            if let exist = layer.sublayers?.first(where: { $0.name == "top" }) {
                exist.removeFromSuperlayer()
            }
            let border: CALayer = CALayer()
            border.borderColor = color.cgColor
            border.name = "top"
            // 현재 UIView의 frame 정보를 통해 경계선이 그려질 레이어의 영역을 지정
            border.frame = CGRect(
                x: 0, y: 0,
                width: frame.size.width, height: width)
            border.borderWidth = width
            // 현재 그려지고 있는 UIView의 layer의 sublayer중에 가장 앞으로 추가해줌
            let index = layer.sublayers?.count ?? 0
            layer.insertSublayer(border, at: UInt32(index))
        } else if options.contains(.right) {
            // 이미 해당 사이드에 경계선이 있는지 확인하고, 있으면 제거
            if let exist = layer.sublayers?.first(where: { $0.name == "right" }) {
                exist.removeFromSuperlayer()
            }
            let border: CALayer = CALayer()
            border.borderColor = color.cgColor
            border.name = "left"
            // 현재 UIView의 frame 정보를 통해 경계선이 그려질 레이어의 영역을 지정
            border.frame = CGRect(
                x: frame.size.width - width, y: 0,
                width: width, height: frame.size.height)
            border.borderWidth = width
            // 현재 그려지고 있는 UIView의 layer의 sublayer중에 가장 앞으로 추가해줌
            let index = layer.sublayers?.count ?? 0
            layer.insertSublayer(border, at: UInt32(index))
        } else if options.contains(.left) {
            // 이미 해당 사이드에 경계선이 있는지 확인하고, 있으면 제거
            if let exist = layer.sublayers?.first(where: { $0.name == "left" }) {
                exist.removeFromSuperlayer()
            }
            let border: CALayer = CALayer()
            border.borderColor = color.cgColor
            border.name = "left"
            // 현재 UIView의 frame 정보를 통해 경계선이 그려질 레이어의 영역을 지정
            border.frame = CGRect(
                x: 0, y: 0,
                width: width, height: frame.size.height)
            border.borderWidth = width
            // 현재 그려지고 있는 UIView의 layer의 sublayer중에 가장 앞으로 추가해줌
            let index = layer.sublayers?.count ?? 0
            layer.insertSublayer(border, at: UInt32(index))
        } else if options.contains(.bottom) {
            // 이미 해당 사이드에 경계선이 있는지 확인하고, 있으면 제거
            if let exist = layer.sublayers?.first(where: { $0.name == "bottom" }) {
                exist.removeFromSuperlayer()
            }
            let border: CALayer = CALayer()
            border.borderColor = color.cgColor
            border.name = "bottom"
            // 현재 UIView의 frame 정보를 통해 경계선이 그려질 레이어의 영역을 지정
            border.frame = CGRect(
                x: 0, y: frame.size.height - width,
                width: frame.size.width, height: width)
            border.borderWidth = width
            // 현재 그려지고 있는 UIView의 layer의 sublayer중에 가장 앞으로 추가해줌
            let index = layer.sublayers?.count ?? 0
            layer.insertSublayer(border, at: UInt32(index))
        }
    }
}
