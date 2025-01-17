//
//  ColorsMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Colors {
    
    init(from colorsNetwork: ColorsNetwork?) {
        self.init(
            bgColorApp : colorsNetwork?.bgColorApp ?? "",
            bgColorHeader : colorsNetwork?.bgColorHeader ?? "",
            primaryColor : colorsNetwork?.primaryColor ?? "",
            colorAuthorOpinion : colorsNetwork?.colorAuthorOpinion ?? "",
            text : colorsNetwork?.text ?? ""
        )
    }
    
}
