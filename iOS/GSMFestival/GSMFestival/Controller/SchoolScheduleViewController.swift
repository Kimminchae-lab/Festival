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
    
    @IBOutlet weak var calendarView: FSCalendar! {
        didSet{
            calendarView.delegate = self
            calendarView.dataSource = self
            calendarView.translatesAutoresizingMaskIntoConstraints = false
            calendarView.headerHeight = 50
            calendarView.appearance.headerMinimumDissolvedAlpha = 0.0
            calendarView.appearance.headerDateFormat = "YYYY년 M월"
            calendarView.appearance.headerTitleColor = .black
            calendarView.appearance.headerTitleFont = UIFont.systemFont(ofSize: 24)
            calendarView.locale = Locale(identifier: "ko_KR")
            calendarView.backgroundColor = UIColor(red: 241/255, green: 249/255, blue: 255/255, alpha: 1)
            calendarView.appearance.selectionColor = UIColor(red: 38/255, green: 153/255, blue: 251/255, alpha: 1)
            calendarView.appearance.todayColor = UIColor(red: 188/255, green: 224/255, blue: 253/255, alpha: 1)
            calendarView.appearance.headerMinimumDissolvedAlpha = 0.0
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

