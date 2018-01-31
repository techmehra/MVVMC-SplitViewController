//
//  PrimaryContainerType.swift
//  MVVMC-SplitViewController
//
//  Created by Mathew Gacy on 1/28/18.
//  Copyright © 2018 Mathew Gacy. All rights reserved.
//

import UIKit

enum DetailView<T: UIViewController> {
    case visible(T)
    case empty
}

protocol PrimaryContainerType: class {
    var detailView: DetailView<UIViewController> { get set }
    func collapseDetail()
    func separateDetail()
    func makeEmptyViewController() -> UIViewController
}