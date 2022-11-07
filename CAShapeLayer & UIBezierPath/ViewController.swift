//
//  ViewController.swift
//  CAShapeLayer & UIBezierPath
//
//  Created by 김병엽 on 2022/11/07.
//

// Reference https://medium.com/@samarthpaboowal/drawing-using-cashapelayer-in-ios-9a6c83de7eb2

import UIKit

class ViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        containerView.frame = CGRect(x: view.frame.width / 2 - 100, y: view.frame.height / 2 - 100, width: 200, height: 200)
        view.addSubview(containerView)
                
        addMultipleLayers()
    }

    private func drawRectangle() {
            
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 200, y: 0))
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 0, y: 200))
        path.addLine(to: CGPoint(x: 0, y: 0))
            
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.orange.cgColor
        shapeLayer.lineWidth = 3
            
        containerView.layer.addSublayer(shapeLayer)
    }
    
    private func drawTriangle() {
            
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 200))
        path.addLine(to: CGPoint(x: 100, y: 0))
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 0, y: 200))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.green.cgColor
        shapeLayer.lineWidth = 3
            
        containerView.layer.addSublayer(shapeLayer)
    }
    
    private func drawOval() {
            
        let path = UIBezierPath(ovalIn: containerView.bounds)
            
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.orange.cgColor
        shapeLayer.lineWidth = 3
        shapeLayer.strokeColor = UIColor.black.cgColor
            
        containerView.layer.addSublayer(shapeLayer)
    }
    
    private func drawArc() {
            
        let path = UIBezierPath(arcCenter: CGPoint(x: 100, y: 100), radius: 100, startAngle: .pi, endAngle: 0, clockwise: true)
            
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.orange.cgColor
        shapeLayer.lineWidth = 3
        shapeLayer.strokeColor = UIColor.black.cgColor
            
        containerView.layer.addSublayer(shapeLayer)
    }
    
    private func addMultipleLayers() {
            
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: 200, y: 0))
        path1.addLine(to: CGPoint(x: 200, y: 200))
        path1.addLine(to: CGPoint(x: 0, y: 200))
        path1.addLine(to: CGPoint(x: 0, y: 0))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0, y: 200))
        path2.addLine(to: CGPoint(x: 100, y: 0))
        path2.addLine(to: CGPoint(x: 200, y: 200))
        path2.addLine(to: CGPoint(x: 0, y: 200))
        
        let path3 = UIBezierPath(ovalIn: CGRect(x: 50, y: 100, width: 100, height: 100))
        
        let shapeLayer1 = CAShapeLayer()
        shapeLayer1.path = path1.cgPath
        shapeLayer1.strokeColor = UIColor.black.cgColor
        shapeLayer1.fillColor = UIColor.orange.cgColor
        shapeLayer1.lineWidth = 3
    
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = path2.cgPath
        shapeLayer2.strokeColor = UIColor.red.cgColor
        shapeLayer2.fillColor = UIColor.green.cgColor
        shapeLayer2.lineWidth = 3
        
        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = path3.cgPath
        shapeLayer3.fillColor = UIColor.orange.cgColor
        shapeLayer3.lineWidth = 3
        shapeLayer3.strokeColor = UIColor.black.cgColor
        
        containerView.layer.addSublayer(shapeLayer1)
        containerView.layer.insertSublayer(shapeLayer2, above: shapeLayer1)
        containerView.layer.insertSublayer(shapeLayer3, above: shapeLayer2)
    }
    
}

