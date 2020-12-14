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
    
    
    var calendarView: FSCalendar = {
        let calendarview = FSCalendar()
        
        calendarview.translatesAutoresizingMaskIntoConstraints = false
        calendarview.headerHeight = 50
        calendarview.appearance.headerMinimumDissolvedAlpha = 0.0
        calendarview.appearance.headerDateFormat = "YYYY년 M월"
        calendarview.appearance.headerTitleColor = .black
        calendarview.appearance.headerTitleFont = UIFont.systemFont(ofSize: 24)
        calendarview.locale = Locale(identifier: "ko_KR")
        calendarview.backgroundColor = UIColor(red: 241/255, green: 249/255, blue: 255/255, alpha: 1)
        calendarview.appearance.selectionColor = UIColor(red: 38/255, green: 153/255, blue: 251/255, alpha: 1)
        calendarview.appearance.todayColor = UIColor(red: 188/255, green: 224/255, blue: 253/255, alpha: 1)
        calendarview.appearance.headerMinimumDissolvedAlpha = 0.0
       
        return calendarview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        calendarView.delegate = self
        calendarView.dataSource = self
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        view.addSubview(calendarView)
        
        calendarView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 140).isActive = true
        calendarView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        calendarView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        calendarView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        
    }
    
}


extension SchoolScheduleViewController: FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(dateFormatter.string(from: date) + " 선택됨")
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(dateFormatter.string(from: date) + " 해제됨")
    }
}

