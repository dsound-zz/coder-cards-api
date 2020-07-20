# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Deck.destroy_all 
Card.destroy_all 

# Users


# Decks

Deck.create(:name => 'Javascript', :user_id => User.find(2).id)
Deck.create(:name => 'Ruby', :user_id => User.find(2).id)
Deck.create(:name => 'Algorithms', :user_id => User.find(2).id)
Deck.create(:name => 'HTML5/CSS3', :user_id => User.find(2).id)
Deck.create!(:name => 'Data Structures', :user_id => User.find(2).id)
 

# Cards

# Javascript

Card.create(:front => 'Javascript', :back => "JavaScript (JS) is a lightweight interpreted or just-in-time compiled programming language with first-class functions. While it is most well-known as the scripting language for Web pages, many non-browser environments also use it, such as Node.js, Apache CouchDB and Adobe Acrobat. JavaScript is a prototype-based, multi-paradigm, dynamic language, supporting object-oriented, imperative, and declarative (e.g. functional programming) styles. ", :deck_id => 1) 
Card.create(:front => 'Type Coercion', :back => "Type coercion is the automatic or implicit conversion of values from one data type to another (such as strings to numbers). Type conversion is similar to type coercion because they both convert values from one data type to another with one key difference — type coercion is implicit whereas type conversion can be either implicit or explicit.", :deck_id => 1)
Card.create(:front => 'Promises', :back => "The Promise object represents the eventual completion (or failure) of an asynchronous operation, and its resulting value. A Promise is in one of these states:

pending: initial state, neither fulfilled nor rejected.
fulfilled: meaning that the operation completed successfully.
rejected: meaning that the operation failed.", :deck_id => 1)

Card.create(:front => 'Primatives', :back => "In JavaScript, a primitive (primitive value, primitive data type) is data that is not an object and has no methods. There are 7 primitive data types: string, number, bigint, boolean, null, undefined, symbol (new in ECMAScript 2016).", :deck_id => 1)
Card.create(:front => 'A Callback', :back => "Simply put: A callback is a function that is to be executed after another function has finished executing — hence the name 'call back'. More complexly put: In JavaScript, functions are objects. ... Any function that is passed as an argument is called a callback function.", :deck_id => 1)
Card.create(:front => 'Closure', :back => "A closure is the combination of a function and the lexical environment within which that function was declared.", :deck_id => 1)
Card.create(:front => 'The Call Stack', :back => "A call stack is a mechanism for an interpreter (like the JavaScript interpreter in a web browser) to keep track of its place in a script that calls multiple functions — what function is currently being run and what functions are called from within that function, etc.", :deck_id => 1)
Card.create(:front => 'This', :back => "A function's this keyword behaves a little differently in JavaScript compared to other languages. It also has some differences between strict mode and non-strict mode.

In most cases, the value of this is determined by how a function is called. It can't be set by assignment during execution, and it may be different each time the function is called. ES5 introduced the bind() method to set the value of a function's this regardless of how it's called, and ES2015 introduced arrow functions which don't provide their own this binding (it retains the this value of the enclosing lexical context).", :deck_id => 1)

# Ruby
Card.create(:front => 'Ruby', :back => "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro 'Matz' Matsumoto in Japan. Ruby is dynamically typed and garbage-collected. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming.", :deck_id => 2)
Card.create(:front => 'Class', :back => "A class is a blueprint from which objects are created. The object is also called as an instance of a class. For Example, the animal is a class and mammals, birds, fish, reptiles, and amphibians are the instances of the class. Similarly, the sales department is the class and the objects of the class are sales data, sales manager, and secretary.", :deck_id => 2)
Card.create(:front => 'Method', :back => "A method in Ruby is a set of expressions that returns a value. With methods, one can organize their code into subroutines that can be easily invoked from other areas of their program.", :deck_id => 2)
Card.create(:front => 'Ruby on Rails', :back => "Ruby on Rails, or Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller framework, providing default structures for a database, a web service, and web pages.", :deck_id => 2)

# Algos
Card.create(:front => 'Bubble Sort', :back => "function bubbleSortBasic(array) {
  for(var i = 0; i < array.length; i++) {
    for(var j = 1; j < array.length; j++) {
      if(array[j - 1] > array[j]) {
        swap(array, j - 1, j);
      }
    }
  }
  return array;
}", :deck_id => 3)
Card.create(:front => 'Merge Sort', :back => "function mergeSort(arr) {
  if (arr.length === 1) {
    return arr;
  }

  const center = Math.floor(arr.length / 2);
  const left = arr.slice(0, center);
  const right = arr.slice(center);

  return merge(mergeSort(left), mergeSort(right));
}

function merge(left, right) {
  const results = [];

  while (left.length && right.length) {
    if (left[0] < right[0]) {
      results.push(left.shift());
    } else {
      results.push(right.shift());
    }
  }

  return [...results, ...left, ...right];
}", :deck_id => 3)
Card.create(:front => 'Big O Notation', :back => "Big O notation is a mathematical notation that describes the limiting behavior of a function when the argument tends towards a particular value or infinity. It is a member of a family of notations invented by Paul Bachmann, Edmund Landau, and others, collectively called Bachmann–Landau notation or asymptotic notation.", :deck_id => 3)
Card.create(:front => "O(log n)", :back => "Logarithmic: Finding an item in a sorted array with a binary search or a balanced search tree as well as all operations in a Binomial heap", :deck_id => 3)
Card.create(:front => "O(n)", :back => "Linear: Finding an item in an unsorted list or in an unsorted array; adding two n-bit integers by ripple carry", :deck_id => 3)

# HTML/CSS
Card.create(:front => 'Div', :back => "The <div> tag defines a division or a section in an HTML document.
The <div> element is often used as a container for other HTML elements to style them with CSS or to perform certain tasks with JavaScript.", :deck_id => 4)
Card.create(:front => 'Span', :back => "The <span> tag is used to group inline-elements in a document.
The <span> tag provides no visual change by itself.
The <span> tag provides a way to add a hook to a part of a text or a part of a document.", :deck_id => 4)
Card.create(:front => 'Flexbox', :back => "Flexbox is a one-dimensional layout method for laying out items in rows or columns. Items flex to fill additional space and shrink to fit into smaller spaces.", :deck_id => 4)
Card.create(:front => 'Grid', :back => "CSS Grid Layout excels at dividing a page into major regions or defining the relationship in terms of size, position, and layer, between parts of a control built from HTML primitives.

Like tables, grid layout enables an author to align elements into columns and rows. However, many more layouts are either possible or easier with CSS grid than they were with tables. For example, a grid container's child elements could position themselves so they actually overlap and layer, similar to CSS positioned elements.", :deck_id => 4)
Card.create(:front => 'Padding', :back => "The padding CSS property sets the padding area on all four sides of an element. It is a shorthand for padding-top, padding-right, padding-bottom, and padding-left.", :deck_id => 4)
Card.create(:front => 'Margin', :back => "The margin CSS property sets the margin area on all four sides of an element. It is a shorthand for margin-top, margin-right, margin-bottom, and margin-left.", :deck_id => 4)

# Data Structures
Card.create(:front => 'Stack', :back => 'Stack is a linear data structure which follows a particular order in which the operations are performed. The order may be LIFO(Last In First Out) or FILO(First In Last Out).', :deck_id => 5)
Card.create(:front => 'Queue', :back => 'Queue is an abstract data structure, somewhat similar to Stacks. Unlike stacks, a queue is open at both its ends. One end is always used to insert data (enqueue) and the other is used to remove data (dequeue). Queue follows First-In-First-Out methodology, i.e., the data item stored first will be accessed first.', :deck_id => 5)
Card.create(:front => 'Linked List', :back => 'A linked list consists of nodes where each node contains a data field and a reference(link) to the next node in the list', :deck_id => 5)
Card.create(:front => 'Binary Tree', :back => 'a binary tree is a tree data structure in which each node has at most two children, which are referred to as the left child and the right child.', :deck_id => 5)


# Card.create(:front => 'A Computer', :back => 'is a machine without intelligence and needs a Human Being to 
# tell it what to do.', :deck_id => Deck.first.id)
# Card.create(:front => 'Demian', :back => 'Is the developer of this app so please sign up to create your own deck 
# of cards! And feel free to fork the repo at ', :deck_id => Deck.first.id)

