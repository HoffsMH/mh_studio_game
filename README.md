# Intro
Not everything listed here takes the form of a direct question. The following are notes from the pragmatic studio Ruby course that I think are important, concerns over issues I think I don't yet fully understand, and finally questions I hope to answer eventually. In no particular order...

testing
===============
* Can or should I put multiple conditions or things that I want tested inside of a single ``it`` block?


* What about testing one thing and then making an ``it`` that test multiple things that include that first thing.
Do we want to try to isolate each thing we test?


* How to prevent ``puts`` statements from mucking up my rspec output

* does ``before do`` run before each ``it`` or once before all the ``its``

* is ``context`` just for conditionals on the object?


* ``before dos`` are cascading? Does an inner ``context`` have priority over an outer ``context``

* in prag studio they are using plain language in their ``its``. but im reading online you are supposed to include
method names and ``#`` or ``.``

* The reason we always write the minimum amount of code needed to get a test to pass is to make sure we don't need to write another separate test for another aspect of the objects behavior?
and so you dont lose track of what aspect of the objects behavior you are currently working on

* can you specify ranges like ``1..101`` in rspec and get rspec to test each value in the range? If so is that a common practice; to make sure that an object method will work within a certain range of inputs?


* This is more of a note to help me remember as I found these points in the course really helpful in understanding all this.

> * Writing the test first forces you to think through how the code should behave from the outside before diving into an implementation. In other words, writing the test first is a design activity. It helps you stay true to good OO principles such as encapsulation.


> * When you write a test first, you're starting with a measurable goal. That helps focus you on the problem you're trying to solve. And you know exactly when you're done: when the test passes! In other words, the tests express how the code should behave when we're finished.


> * If you write the tests first, then you always have safety nets for your code. You don't have to remember to go back in and add unit tests later because they were there from the beginning. And when you always have tests for everything, then you can safely make changes without the fear of breaking something. And trust us, that kind of confidence is essential to being a productive programmer.

Objects
==================

* Does it matter what order class methods are in?
	can you call a method that is further down the class?

* when I
```ruby
x = :green
y = "green"
y = y.to_sym
```

	I effectively removed the "green" object from memory?

* what are the different characters put in front of various methods supposed to mean eg.
```ruby
::methodname
#methodname
.methodname
```

* trying to make sure I understand this.
	* I want a class when I want an object with both behavior and state
	* I want a module when I want an object with behavior only
		* also cannot be instantiated
		* provides a namespace so you can keep specific method names simple
		* no inheritance
	* I want a struct when I want an object with state only
	* why can we access  constants in a module with the scope resolution operator ``::`` but not regular variables?
	*  It said in the guide that contstants in modules have to be all uppercase, but earlier they said that modules have to only be capitalized
		* what is different about constants in modules.
* Enumerable and mixin are synonyms? If not how are they related?
* Why could we change from ``require_relative`` to ``require`` once we moved everything into the folder
Wrap up
==========
* The section on turning everything into a gem was easy but the information was overwhelming. Everything worked but I couldn't explain WHY it worked if you asked me.

* Further more



conditionals
==================
