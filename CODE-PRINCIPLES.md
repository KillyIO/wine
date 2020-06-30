# WINE CODE PRINCIPLES

## WHAT IS THIS DOCUMENT

**The purpose of this document is to provide WINE developers with a guide to keep the code clean and uniform throughout the entire application.**

## CONTENT

 1. **FILES**
 2. **CLASSES**
 3. **METHODS**
 4. **FUNCTIONS**
 5. **VARIABLES**
 6. **MISCELLANEOUS**

## FILES

 1. A file must and should contain one and **ONLY** one class. This rule does not apply to files containing *stateful widgets* however those files must and should contains one and **ONLY** *stateful widget*.
 2. A file must not and should not exceed 50 lines. Those 50 lines does not take into account **imports** or if the file contains a *stateful widget* the class extending **StatefulWidget** is not taken into account.

## CLASSES

 1. A class must and should contain **TEN** and only **TEN** *public methods*.
 2. A class must and should contain **TEN** and only **TEN** *private methods*.
 3. In a widget (Stateful/Stateless) avoid deep nesting. Your widget should not go deeper than **3** layers.
 4. Use **StatelessWidget** whenever possible.
 5. Use **const** constructor whenever possible.
 6. Inside a **Widget**, if you need to split your code create a new **Widget** whenever it will be displayed on screen else use a **function**.

## METHODS

 1. Ideally a method must not and should not exceed **25** lines, if it is impossible to do otherwise be sure to not exceed **35** lines, if it is still impossible to follow this rule then you're doing something wrong.
 2. Methods are prefixed with **fetch** when fetching resources from local sources
 3. Methods are prefixed with **load** when loading resources from remote sources
 4. Methods are prefixed with **find** when the search is specific


## FUNCTIONS

 1. Functions must not and should not have more than 3 parameters.

## VARIABLES

 1. All temporary variables have to be prefixed with **Tmp**.
 2. Use **const** and **final** variables whenever possible.

## MISCELLANEOUS

 1. Increment **version code** whenever a code is committed.
 2. Success class names have to be prefixed with **SCS**
 3. Event class names have to be prefixed with **EVT**
 4. Only one call to a Failure/Success method per event. If you have to call multiple Failure/Success methods, create private events
