package todoapp

import grails.converters.JSON
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NoteController {
    def noteService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        render(view: "index")
    }

    def saveNote(){
        boolean status = false
        if(params?.noteId){
            status = noteService.saveToDo(params)
        }
            render status;
    }

    def updateNote(){
        boolean status = false
        if(params?.noteId) {
            status = noteService.updateTodo(params)
        }
            render status;
    }

    def getNoteList(){
        def noteList
        if(params?.status){
            noteList = noteService.getAllToDos(params?.status)
        }
        render noteList as JSON
    }

    def markNoteAsCompleted(){
        boolean status = false
        if(params?.status && params?.noteId){
            status = noteService.markTodoAsCompleted(params)
        }
        render status;
    }

    def deleteNote(){
        boolean status = false
        if(params?.noteId){
            status = noteService.deleteTodo(params?.noteId)
        }
        render status;
    }
}