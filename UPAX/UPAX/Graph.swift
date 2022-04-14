//
//  Graph.swift
//  UPAX
//
//  Created by Mariano Manuel on 4/8/22.
//

import UIKit
import Charts

class Graph: UIViewController {

    let API = APIService()
    let questions: [String] = ["¿Estaba limpia la sucursal?", "¿Qué empresas cuentan con medidas de seguridad?", "¿Qué formato tiene la tienda?", "¿Qué formato tiene tu promozona?", "¿Está exhibido el producto en promoción?"]
    let percetnage: [Double] = [60, 40, 30, 15, 15, 25, 10, 5, 0, 100, 20, 80, 40, 60]
    let text: [String] = ["si", "no", "Elektra", "Banco Azteca", "Neto", "Upax", "Dragon", "Otro", "Tiendas Retail", "Tiendas operativas", "Chica", "Grande", "Si", "No"]
    var Colors: [String]!
    
    @IBOutlet weak var ChartView1: PieChartView!
    @IBOutlet weak var ChartView2: PieChartView!
    @IBOutlet weak var ChartView3: PieChartView!
    @IBOutlet weak var ChartView4: PieChartView!
    @IBOutlet weak var ChartView5: PieChartView!
    
    @IBOutlet weak var Chart1Label: UILabel!
    @IBOutlet weak var Chart2Label: UILabel!
    @IBOutlet weak var Chart3Label: UILabel!
    @IBOutlet weak var Chart4Label: UILabel!
    @IBOutlet weak var Chart5Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0xFF, green: 0xFF, blue: 0xFF, alpha: 1)
        
        //Retrieve Colors
        API.fetchColors { colors in
            self.Colors = colors as? [String]
            //print(colors!)
        }
        
        //Retrieve API Chart Data
        API.fetchAPIResults { Questions in
            //Issue with API Service
            //Can't retrieve info using Codable
            print(Questions!)
        }
        customizeChart1(dataPoints: text, values: percetnage)
        customizeChart2(dataPoints: text, values: percetnage)
        customizeChart3(dataPoints: text, values: percetnage)
        customizeChart4(dataPoints: text, values: percetnage)
        customizeChart5(dataPoints: text, values: percetnage)
    }
    
    func customizeChart1(dataPoints: [String], values: [Double]) {
        
        Chart1Label.text = questions[0]
      
        // 1. Set ChartDataEntry
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<2 {
            let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data:  dataPoints[i] as AnyObject)
            dataEntries.append(dataEntry)
        }
      
        // 2. Set ChartDataSet
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: "")
        pieChartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
      
        // 3. Set ChartData
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        let format = NumberFormatter()
        format.numberStyle = .none
        let formatter = DefaultValueFormatter(formatter: format)
        pieChartData.setValueFormatter(formatter)
      
        // 4. Assign it to the chart's data
        ChartView1.data = pieChartData
    }
    
    func customizeChart2(dataPoints: [String], values: [Double]) {
      
        Chart2Label.text = questions[1]
        
        // 1. Set ChartDataEntry
        var dataEntries: [ChartDataEntry] = []
        for i in 2..<8 {
            let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data:  dataPoints[i] as AnyObject)
            dataEntries.append(dataEntry)
        }
      
        // 2. Set ChartDataSet
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: "")
        pieChartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
      
        // 3. Set ChartData
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        let format = NumberFormatter()
        format.numberStyle = .none
        let formatter = DefaultValueFormatter(formatter: format)
        pieChartData.setValueFormatter(formatter)
      
        // 4. Assign it to the chart's data
        ChartView2.data = pieChartData
    }
    
    func customizeChart3(dataPoints: [String], values: [Double]) {
      
        Chart3Label.text = questions[2]
        
        // 1. Set ChartDataEntry
        var dataEntries: [ChartDataEntry] = []
        for i in 8..<10 {
            let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data:  dataPoints[i] as AnyObject)
            dataEntries.append(dataEntry)
        }
      
        // 2. Set ChartDataSet
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: "")
        pieChartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
      
        // 3. Set ChartData
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        let format = NumberFormatter()
        format.numberStyle = .none
        let formatter = DefaultValueFormatter(formatter: format)
        pieChartData.setValueFormatter(formatter)
      
        // 4. Assign it to the chart's data
        ChartView3.data = pieChartData
    }
    
    func customizeChart4(dataPoints: [String], values: [Double]) {
      
        Chart4Label.text = questions[3]
        
        // 1. Set ChartDataEntry
        var dataEntries: [ChartDataEntry] = []
        for i in 10..<12 {
            let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data:  dataPoints[i] as AnyObject)
            dataEntries.append(dataEntry)
        }
      
        // 2. Set ChartDataSet
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: "")
        pieChartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
      
        // 3. Set ChartData
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        let format = NumberFormatter()
        format.numberStyle = .none
        let formatter = DefaultValueFormatter(formatter: format)
        pieChartData.setValueFormatter(formatter)
      
        // 4. Assign it to the chart's data
        ChartView4.data = pieChartData
    }

    func customizeChart5(dataPoints: [String], values: [Double]) {
      
        Chart5Label.text = questions[4]
        
        // 1. Set ChartDataEntry
        var dataEntries: [ChartDataEntry] = []
        for i in 12..<14 {
            let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data:  dataPoints[i] as AnyObject)
            dataEntries.append(dataEntry)
        }
      
        // 2. Set ChartDataSet
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: "")
        pieChartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
      
        // 3. Set ChartData
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        let format = NumberFormatter()
        format.numberStyle = .none
        let formatter = DefaultValueFormatter(formatter: format)
        pieChartData.setValueFormatter(formatter)
      
        // 4. Assign it to the chart's data
        ChartView5.data = pieChartData
    }
    
    private func colorsOfCharts(numbersOfColor: Int) -> [UIColor] {
      var colors: [UIColor] = []
      for _ in 0..<numbersOfColor {
        let red = Double(arc4random_uniform(256))
        let green = Double(arc4random_uniform(256))
        let blue = Double(arc4random_uniform(256))
        let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
        colors.append(color)
      }
      return colors
    }
}
