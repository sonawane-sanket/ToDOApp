package todoapp

class Note {

    Long noteId
    String name
    String dueDate
    String createdDate
    boolean status = false

    static constraints = {
        noteId nullable : false;
        name nullable : false;
        dueDate nullable : true;
        createdDate nullable : true;
        status nullable: true;
    }
}
