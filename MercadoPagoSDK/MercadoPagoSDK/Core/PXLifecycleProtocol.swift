//
//  PXLifecycleProtocol.swift
//  MercadoPagoSDK
//
//  Created by Juan sebastian Sanzone on 29/8/18.
//  Copyright © 2018 MercadoPago. All rights reserved.
//

import Foundation

/**
 Implement this protocol in order to keep you informed about important actions in our checkout life cycle.
 */
@objc public protocol PXLifeCycleProtocol: NSObjectProtocol {
    /**
     User cancel checkout. By any cancel UI button or back navigation action. You can return an optional block, to override the default exit cancel behavior. Default exit cancel behavior is back navigation stack.
     */
    @objc func cancelCheckout() -> (() -> Void)?
    /**
     User finish checkout with Payment information `PXPayment`. You can return an optional block, to override the default exit behavior. Default exit behavior is `popToRoot`.
     - parameter payment: Optional PXPayment object. (Payment info)
     */
    @objc func finishCheckout(payment: PXPayment?) -> (() -> Void)?
}