//
//  ViewController.swift
//  CalendarSw
//
//  Created by Shan Shawn on 4/6/15.
//  Copyright (c) 2015 Shan Shawn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, JTCalendarDataSource {
    
    @IBOutlet weak var calendarMenuView: JTCalendarMenuView!
    @IBOutlet weak var calendarContentView: JTCalendarContentView!
    var calendar: JTCalendar = JTCalendar()
    
    @IBAction func changeToToday(sender: UIButton) {
        self.calendar.currentDate = NSDate()
        
    }
    
    @IBAction func changeToWeek(sender: UIButton) {
        self.calendar.calendarAppearance.isWeekMode = !self.calendar.calendarAppearance.isWeekMode
        self.calendar.reloadAppearance()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calendar = JTCalendar()
        self.calendar.menuMonthsView = self.calendarMenuView
        self.calendar.contentView = self.calendarContentView
        self.calendar.dataSource = self
        self.calendar.reloadData()         // Do any additional setup after loading the view, typically from a nib.
        
       // self.calendarContentView.height = 100
        
        
        let swiftColor = UIColor(red: 1, green: 165/255, blue: 0, alpha: 1)
        let todayColor = UIColor(red: 1, green: 165/255, blue: 0, alpha: 1)
        let selectColor = UIColor(red:35/255, green:159/255, blue: 192/255, alpha: 100)
       // self.calendar.calendarAppearance.calendar.firstWeekday() = 2; // Monday
        self.calendar.calendarAppearance.ratioContentMenu = 1;
        self.calendar.calendarAppearance.menuMonthTextColor = UIColor.blackColor()
        self.calendar.calendarAppearance.dayCircleColorSelected = selectColor
        self.calendar.calendarAppearance.dayCircleColorSelectedOtherMonth = selectColor
        self.calendar.calendarAppearance.dayCircleColorToday = todayColor
        self.calendar.calendarAppearance.dayCircleColorTodayOtherMonth = todayColor
        self.calendar.calendarAppearance.dayDotColorToday = todayColor
        //self.calendar.calendarAppearance.dayDotColorSelected = todayColor
        //self.calendar.calendarAppearance.dayBorderWidth = 0
        

        //self.calendar.calendarAppearance.dayCircleColorToday = todayColor
        //self.calendar.calendarAppearance.dayTextColorSelected = UIColor.whiteColor()
        
      //  [self.calendar setMenuMonthsView:self.calendarMenuView];
      //  [self.calendar setContentView:self.calendarContentView];
      //  [self.calendar setDataSource:self];
    }
    
    override func viewDidLayoutSubviews() {
        self.calendar.repositionViews()
    }
    func calendarHaveEvent(calendar: JTCalendar!, date: NSDate!) -> Bool {
        return false
    }
    func calendarDidDateSelected(calendar: JTCalendar!, date: NSDate!) {
        NSLog("%@", date)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

