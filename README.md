# Poll

A student that completes this project shows that they can:

- use storyboard references to separate UI into multiple storyboards
- use view controller containment and embed segues to embed child view controllers
- use UITabBarController to allow user to switch between multiple view controllers

## Introduction

Poll is an application where a user can submit a vote on a poll of some sort (for example, the question could be "What is your favorite color?"), and see the results of all of those votes.

This application requires you to implement concepts such as using table view controllers, passing objects through a segue (using `func prepare(for segue`), and MVC.

Watch the screen recording below in order to know how final product should look and behave:

![](https://user-images.githubusercontent.com/16965587/56761603-febc9480-675a-11e9-9761-3d0ca8f2cbe7.gif)

The app has three tabs: Voting, Results, and Combined. The Voting tab allows the user to submit a response to the poll. The Results tab displays a table view with submitted results. The Combined tab shows a view controller that uses view controller containment to display both the vote submission interface and the results table view on a single screen.

## Instructions

## Part 0 - Preparation

Create a new Xcode project. It should be a Single View iOS Application. Make sure you select Swift for the language, and store it in an appropriate location on your computer.

## Part 1 - Model and Model Controller

Create a model object that represents a vote, with the name of the person who voted, and their response.

1. Create a new Swift file called "Vote.swift"

2. Create a `Vote` class with `name` and `response` properties.

3. Create an initializer for `Vote`. It should take `name` and `response` values.

Create a model controller for `Vote`s:

1. Make a "VoteController.swift" file and create a `VoteController` class in it.

2. Add a `votes` property that is of type `[Vote]`. Set its initial value to an empty array.

3. Add a "Create" function that should take in a name and response as parameters. The function should initialize a new `Vote` object and append it to the `votes` array.

## Part 2 - Storyboards

In the "Main.storyboard", you will create a basic master-detail pattern layout using a navigation controller.

1. Drag out a `UITableViewController` scene.

2. Embed this scene in a navigation controller and set the navigation controller as the initial view controller.

3. Give the table view cell an identifier and set its style to "Right Detail".

4. Create a Cocoa Touch Subclass of `UITableViewController` for this scene called `ResultsTableViewController` and set the storyboard scene's class to it.

5. Drag out a `UIViewController` scene.

6. Add a "Show" segue from the table view controller to this new `UIViewController` scene.

7. This scene should have the following views:
    - a label that asks a question such as "What is your favorite color?"
    - a text field that allows you to enter your name
    - a text field that allows you to enter a response
    - a button that will create a vote.

8. Create a Cocoa Touch Subclass of `UIViewController` for this scene called `VotingViewController` and set the storyboard scene's class to it.

9. Add outlets from your text fields and an action from the button.

## Part 3 - View Controllers

Now we'll add the logic in order for the view controllers to function properly.

#### VotingViewController

1. You should have already created outlets to the text fields and an action from your button. If you haven't, do so now.

2. Add a class variable whose type is `VoteController?`. We will pass the vote controller instance from the table view controller to this view controller in the `prepare(for segue` later on.

3. The submit button action should:
    - Call the `voteController`'s `createVote(with: ...)` function. You will need to get the text from the text fields in order to fill in the function's parameters. 
    - Use the navigation controller to pop this view controller off the navigation stack.

#### ResultsTableViewController

All you need to do in this view controller is fill in the two required `UITableViewDataSource` methods:

1. Create a class property that is a new instance of `VoteController`.
2. Set the number of rows in the table view equal to the amount of votes in the `voteController`'s `votes` property.
3. Remember that our cell is a "Right Detail" style, so we have two labels. In the `cellForRowAt` method, get the instance of `Vote` that corresponds to the cell you are trying to make. (`voteController.votes[indexPath.row]`)
4. Set the `textLabel` and `detailTextLabel`'s text to the vote's name and response, respectively.
5. If it isn't there already, you will need to return the cell at the end of the function.

6. We will also need to make use of the `viewWillAppear` lifecycle method. Call it, and reload the table view inside of it. This will ensure that every time the user goes to this view controller from another tab, the table view will always make new cells for any new votes made.

## Going Further

If you finish early or want to push yourself, here are some additional goals:

- Change your `Vote` model object to have a third property called `timestamp`. Its type should be `Date`. This will allow you to sort the votes in chronological order. Try to implement this.

- Change the table view's prototype cell to be a custom cell. Make a label for each property on the `Vote` model. If you did the previous challenge, make sure that includes showing the timestamp. As a sub-challenge, figure out how to format the timestamp into something that is more human-readable.
