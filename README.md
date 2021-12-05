# SW-Lab-U03_W09_D41-LootLogger-iter3
Third iteration of LootLogger App where after the user pressing a cell of the table, a new screen shows up displaying the details of a specific Item

## Topics
1. Using vertical and horizontal _**Stack Views**_
   - Stack view distribution
     - Fill
     - Fill Equally
   - Stack view spacing
   - Nested Stack Views
   - Replicate Stack Views
2. Fix Content Priority Ambiguity warnings
   - Implicit constraints
   - Intrinsic content size
   - _**Content hugging priorities**_
   - _**Content compression resistance priorities**_ 
3. Navigate between View Controllers
   - _**Segues**_: `UIStoryboardSegue`
      - _**Style**_ (Show), action item, and identifier 
   - Passing Data around 
     - `prepare(for:sender:)` 
---
4. Navigating with `UINavigationController`
5. `UINavigationBar`
   - `UINavigationItem`
   - Adding buttons to the navigation bar
6. Dismissing the Keyboard
   - Dismissing by pressing the Return key
     - `UITextFieldDelegate`
   - Dismissing by tapping elsewhere
     - `UITapGestureRecognizer`

## Description
1. **Third iteration** of **LootLogger App** where after the user pressing a cell of the table, a new screen shows up displaying the details of a specific Item
.
2. Challenge 1: _**Displaying a Number Pad**_
   - The keyboard for the `UITextField` that displays an `Item`’s `valueInDollars` is the default alphabetic keyboard. 
     - It would be better if it were a number pad. 
     - Change the **Keyboard Type** of that `UITextField` to the _**Number Pad**_. 
3. Challenge 2: _**A Different Back Button Title**_
   - Sometimes the title of a back bar button item is too long or does not provide any value. 
   - In LootLogger, when you drill down to the `DetailViewController`, the back bar button item title is **LootLogger**, which does not provide any value to the user. 
     - Change the **back title** displayed when the user is viewing the `DetailViewController`.
     - Some possible title candidates are an empty string, **Back**, and **Log**. 
4. Challenge 3: _**Displaying a Number Pad**_
   - The keyboard for the `UITextField` that displays an `Item`’s `valueInDollars` is the _**default alphabetic keyboard**_. 
   - It would be better if it were a number pad. 
     - Change the _Keyboard Type_ of that `UITextField` to the _**Number Pad**_. 

## Deadline 
Sunday 5th December 5:00 pm
