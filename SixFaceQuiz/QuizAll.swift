import Foundation

import RealmSwift

class QuizAll : Object{
    dynamic var id = 0
    dynamic var character = 1
    dynamic var level = 1
    dynamic var t_or_i = 0
    dynamic var text = ""
    dynamic var choise1 = ""
    dynamic var choise2 = ""
    dynamic var choise3 = ""
    dynamic var choise4 = ""
    dynamic var note = ""
    dynamic var answer = 1
    dynamic var collected = false
    
    override static func primaryKey() -> String? {
        return "id"
    }
}