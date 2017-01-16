package todoapp

import grails.transaction.Transactional

@Transactional
class NoteService {

    def saveToDo(todo){
        def obj = new Note(noteId:todo?.noteId,
                name: todo?.name,
                dueDate: todo?.dueDate ,
                createdDate: todo?.createdDate,
                status: todo?.status)
        (obj.save(flush: true))
        return true
    }

    def updateTodo(note){
        def noteObject = Note.findByNoteId(note?.noteId)
        noteObject.with {
            name        = note?.name
            dueDate     = note?.dueDate ? note?.dueDate : noteObject?.dueDate
        }
        noteObject.save(flush: true)
        return true
    }

    def getAllToDos(status) {
        def noteList
        if(status == 'Completed'){
            noteList = Note.findAllByStatus(true)
        } else if (status == 'Pending'){
            noteList = Note.findAllByStatus(false)
        } else{
            noteList = Note.list()
        }
        return noteList
    }

    def markTodoAsCompleted(note){
        def noteObject = Note.findByNoteId(note?.noteId)
        (note?.status == 'Completed') ? (noteObject.status = true) : (noteObject.status = false)
        noteObject.save(flush: true)
        return true
    }

    def deleteTodo(noteId){
        Note.executeUpdate("delete Note where noteId = '${noteId}'")
        return true;
    }
}
