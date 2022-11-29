//
//  BaseStructs.swift
//  kausus
//
//  Created by Ilja Stepanow on 10.09.22.
//

enum Kausus {
    case accusativ
    case nominativ
    case dativ
    case genetiv
}

enum Geschlecht {
    case masculinum
    case femininum
    case neutrum
}

struct NounClass {
    let Wurzel: String
    let Beendung: String = ""
    let Geschlect: Geschlecht
}
