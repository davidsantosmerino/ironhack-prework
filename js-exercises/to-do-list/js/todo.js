
window.onload = function() {

// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);
  document.onkeypress = function (e) {
    e = e || window.event;
   if(e.keyCode === 13){
      addToDoItem();
   }
};

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);


  function addToDoItem() {
    // add your code here
    // this should create a new list item in the to-do list
    // and set the text as the input from the todo-input field
    var newToDoItem = document.getElementById('todo-input');
    if(newToDoItem.value !== ''){
      var toDoList = document.querySelector('.todo-list-items');
      var newLiToDoItem = document.createElement('li');
      newLiToDoItem.textContent = newToDoItem.value;
      toDoList.appendChild(newLiToDoItem);
      newToDoItem.value = '';
      toastr.success("Item added!")
    }
    else
      toastr.warning("Can't add empty items")
  }

  function markAsDone() {
    var toDoToDone= document.querySelector('.todo-list-items li');
    if(toDoToDone !== null){
      toDoToDone.remove();
      var doneList = document.querySelector('.done-list-items');
      toDoToDone.className = 'done';
      doneList.appendChild(toDoToDone);
      oastr.success("Item done!")

    }
    else {
      toastr.warning("No more items to mark as done")
    }
  }
  
}
