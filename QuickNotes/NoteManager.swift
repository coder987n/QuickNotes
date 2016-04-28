//
//  NoteManager.swift
//  QuickNotes
//
//  Created by Nipun Chhajed on 4/27/16.
//  Copyright © 2016 Program5Studios. All rights reserved.
//

import UIKit

var noteMgr: NoteManager = NoteManager()

struct note {
    var name = "Un-Named"
    var desc = "Un-Descripted"
}

class NoteManager: NSObject {
    
    var notes = [note]()
    
    func addNote(name: String, desc: String) {
        notes.append(note(name: name, desc: desc))
    }

}
