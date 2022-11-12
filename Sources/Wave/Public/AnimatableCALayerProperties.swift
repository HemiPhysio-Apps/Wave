//
//  AnimatableCALayerProperties.swift
//  
//
//  Copyright (c) 2022 Janum Trivedi.
//

import UIKit

/**
 The `LayerAnimator` class contains the supported `CALayer` animatable properties, like `cornerRadius`, `shadowColor`, `shadowOpacity`, and more.

 In an Wave animation block, change these values to create an animation, like so:

 Example usage:
 ```
 Wave.animateWith(spring: .defaultAnimated) {
    myView.layer.animator.cornerRadius = 12
    myView.layer.animator.shadowOpacity = 0.5
 }
 ```
 */
public class LayerAnimator {

    // MARK: - Public

    /// The corner radius of the attached `layer`.
    public var cornerRadius: CGFloat {
        get { _cornerRadius }
        set { _cornerRadius = newValue }
    }

    /// The opacity of the attached layer.
    public var opacity: CGFloat {
        get { _opacity }
        set { _opacity = newValue }
    }

    /// The border color of the attached layer.
    public var borderColor: CGColor {
        get { _borderColor }
        set { _borderColor = newValue }
    }

    /// The border width of the attached `layer`.
    public var borderWidth: CGFloat {
        get { _borderWidth }
        set { _borderWidth = newValue }
    }

    /// The shadow opacity of the attached layer.
    public var shadowOpacity: CGFloat {
        get { _shadowOpacity }
        set { _shadowOpacity = newValue }
    }

    /// The shadow color of the attached layer.
    public var shadowColor: CGColor {
        get { _shadowColor }
        set { _shadowColor = newValue }
    }

    /// The shadow offset of the attached layer.
    public var shadowOffset: CGSize {
        get { _shadowOffset }
        set { _shadowOffset = newValue }
    }

    /// The shadow radius of the attached layer.
    public var shadowRadius: CGFloat {
        get { _shadowRadius }
        set { _shadowRadius = newValue }
    }

    // MARK: - Internal

    weak var layer: CALayer!

    init(layer: CALayer) {
        self.layer = layer
    }

}
