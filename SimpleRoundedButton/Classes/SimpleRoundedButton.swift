//
//  MCCustomButton.swift
//  Pods
//
//  Created by Carl Julius Gödecken on 06.05.17.
//
//

import UIKit

@IBDesignable
open class SimpleRoundedButton: UIButton {

    // MARK: IBInspectable properties
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            let maximumCornerRadius = min(frame.width, frame.height) / 2
            layer.cornerRadius = min(cornerRadius, maximumCornerRadius)
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var backgroundDefaultColor: UIColor? {
        didSet {
            backgroundColor = backgroundDefaultColor
        }
    }
    
    @IBInspectable var backgroundHighlightedColor: UIColor?
    
    override open var isHighlighted: Bool {
        didSet {
            if !oldValue {
                backgroundDefaultColor = backgroundColor
            }
            if let backgroundHighlightedColor = backgroundHighlightedColor {
                backgroundColor = isHighlighted ? backgroundHighlightedColor : backgroundDefaultColor
            }
        }
    }
    
    
    
    // MARK: animations
    open func startAnimating() {
        let activityIndicator = self.activityIndicator ?? createActivityIndicator()
        
        activityIndicator.startAnimating()
        
        UIView.animate(withDuration: 0.2, animations: {
            self.titleLabel?.layer.opacity = 0.0    // hide title label
        }, completion: { _ in
            self.titleLabel?.removeFromSuperview()  // since we're competing with UIKit animations
        })
    }
    
    open func stopAnimating() {
        activityIndicator?.stopAnimating()
        
        if let titleLabel = self.titleLabel {
            titleLabel.layer.opacity = 0.0
            addSubview(titleLabel)
        }
        
        UIView.animate(withDuration: 0.25, animations: {
            self.titleLabel?.layer.opacity = 1.0    // un-hide title label
        })
    }
    
    var activityIndicator: UIActivityIndicatorView? = nil
    
    private func createActivityIndicator() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView(style: .white)
        activityIndicator.hidesWhenStopped = true
        
        // http://stackoverflow.com/questions/30202958/get-center-of-any-uiview-in-swift
        addSubview(activityIndicator)
        
        //Don't forget this line
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: activityIndicator, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: activityIndicator, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
        
        self.activityIndicator = activityIndicator
        return activityIndicator
    }

}
