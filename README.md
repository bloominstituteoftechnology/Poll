# Poll

A student that completes this project shows that they can:

- use storyboard references to separate UI into multiple storyboards
- use view controller containment and embed segues to embed child view controllers
- use UITabBarController to allow user to switch between multiple view controllers

## Introduction

Poll is an application where a user can submit a vote on a poll of some sort (for example, the question could be "What is your favorite color?"), and see the results of all of those votes.

This application requires you to implement concepts such as using multiple storyboards, container views, tab bar controllers, and custom protocols.

Watch the screen recording below in order to know what the final product should look like and behave:

![](https://user-images.githubusercontent.com/16965587/43245136-71d37ff6-906a-11e8-9636-a1167ea96915.gif)

## Instructions

Please fork and clone this repository.

## Part 1 - Model and Model Controller

We're going to create a model object that represents a vote, with the name of the person who voted, and their response.

1. Create a new Swift file called "Vote.swift"
2. Create a `Vote` struct with `name` and `response` constants

We need to make a model controller for this `Vote` struct as well.

1. Make a "VoteController.swift" file and create a `VoteController` class in it.
2. Add a `votes` property that is of type `[Vote]`. Set its initial value to an empty array
3. Add a "Create" function that should take in a name and response as parameters. The function should initialize a new `Vote` object and append it to the `votes` array.

## Part 2 - Storyboards

This application is going to use a `UITabBarController` with three items. The first will be a view controller that allows the user to vote, the second is a view controller that shows the results of the votes, and the third will use container views to combine the first two view controllers. In order to practice storyboard references, each view controller will have its own storyboard.

#### Voting

1. Create a storyboard called "Voting.storyboard".
2. Drag out a `UIViewController` scene, and set it to be the initial view controller of this storyboard.
3. This scene should have the following views:
    - a label that asks a question such as "What is your favorite color?"
    - a text field that allows you to enter your name
    - a text field that allows you to enter a response
    - a button that submits your vote
4. Create a Cocoa Touch Subclass of `UIViewController` for this scene called `VotingViewController` and set the storyboard scene's class to it.
5. Add outlets from your text fields and an action from the button.

#### Results

1. Create a storyboard called "Results.storyboard".
2. Drag out a `UITableViewController` scene and set it as the initial view controller of this storyboard
3. Give the table view cell an identifier and set its style to "Right Detail"
4. Create a Cocoa Touch Subclass of `UITableViewController` for this scene called `ResultsTableViewController` and set the storyboard scene's class to it.

#### Combined 

This view controller will combine the two previously created scenes using container views so they can be viewed at the same time on a single view controller.

1. Create a storyboard called "Combined.storyboard"
2. Drag out a `UIViewController` scene, and set it to be the initial view controller of this storyboard.
3. Add two container views to this scene, and have each container view fill about half of the screen.
4. Delete the view controller that comes with each container view. 
5. Add two storyboard references. One should reference the Voting storyboard, and the other should reference the Results storybaord.
6. From one container view, add an embed segue to the Voting storyboard reference, and from the other, add an embed segue to the Results storyboard reference. Add identifiers to both segues.
7. Create a Cocoa Touch Subclass of `UIViewController` for this scene called `CombinedViewController` and set the storyboard scene's class to it.

#### Main 

In the Main.storyboard, we'll connect all of our storyboards using a tab bar controller so the user can access them.

1. Drag out a `UITabBarController` scene and delete the view controller scenes that come with it.
2. Add three storyboard references. One should reference the Voting storyboard, another the Results storyboard, and another the Combined storyboard.
3. From the tab bar controller scene, add relationship segues to each of the storyboard references to add them as items in the tab bar controlller.
4. Go back to the Voting, Results, and Combined storyboards. You will notice that the scenes should now have a tab bar item in the Document Outline (the icon is a star). Add an appropriate title in each tab bar item.
5. Create a Cocoa Touch Subclass of `UITabBarController` called `PollingTabBarViewController` and set the tab bar controller scene's class to it.

## Part 3 - View Controllers

Now we'll add the logic in order for the view controllers to function properly.

#### Gaining access to the VoteController in all view controllers

Since the tab bar controller is our initial view controller, it will be in charge of initializing an instance of `VoteController`. It will pass a reference of it to the three view controllers in the tab bar. 

We're going to create a protocol that the view controllers will adopt/conform to in order to make sure that they are prepared to receive that `VoteController` reference.

Create a new Swift file called "VoteControllerProtocol.swift". Create a class protocol `VoteControllerProtocol`. It should have a single variable called `voteController: VoteController?`. It should be gettable and settable. 

#### Passing the VoteController to the tab bar view controllers

In the `PollingTabBarViewController` create a new instance of `VoteController` in a constant called `voteController`. This is the instance of the model controller that we need to give access to to any of the tab bar controller's child view controllers that conform to the `ViteControllerProtocol`:

1. Make a function called `passVoteControllerToChildViewControllers`. It have any parameters, and it doesn't return anything.
2. This function will make use of the tab bar controller's `viewControllers` property, which again holds all of its child view controllers that are embedded in the tab bar. This property is optional, so unwrap it using guard-let.
3. Create a for-in loop that iterates through each view controller in the newly unwrapped `viewControllers` property.
4. In each iteration of the loop, you should check if the view controller conforms to the `VoteControllerProtocol` (hint: try casting the view controller as the protocol). If it does conform to the protocol, you can pass the `voteController` to the view controller as you will have access to the view controller's own `voteController` property.
5. Finally, call this function in the `viewDidLoad()`.

At this point, you haven't made any of your view controllers conform to the `VoteControllerProtocol`, but don't worry about that. We'll make them conform to it in the next part.

#### VotingViewController

You should have already created outlets to the text fields and an action from your button. If you haven't, do so now.

Adopt/conform to the `VoteControllerProtocol`. This will ensure you have a correctly typed `voteController` variable according to the protocol. 

The submit button action should call the `voteController`'s `createVote(with: ...)` function. You will need to get the text from the text fields in order to fill in the function's parameters.

#### ResultsTableViewController

In this table view controller, also adopt/conform to the `VoteControllerProtocol`.

All you need to do in this view controller is fill in the two required `UITableViewDataSource` methods:

1. Set the number of rows in the table view equal to the amount of votes in the `voteController`'s `votes` property.
2. Remember that our cell is a "Right Detail" style, so we have two labels. In the `cellForRowAt` method, get the instance of `Vote` that corresponds to the cell you are trying to make. (`voteController.votes[indexPath.row]`)
3. Set the `textLabel` and `detailTextLabel`'s text to the vote's name and response, respectively.
4. If it isn't there already, you will need to return the cell at the end of the function.

We will also need to make use of the `viewWillAppear` lifecycle method. Call it, and reload the table view inside of it. This will ensure that every time the user goes to this view controller from another tab, the table view will always make new cells for any new votes made.

#### CombinedViewController

As this view controller is simply putting the previous two view controllers onto one, there is very little logic required to make this work. 

One thing about the container views is that even though they have an embed segue to the Voting and Results view controllers, the view controllers shown in the container views are **different instances** of those view controllers than the ones in the other two tabs. Because of this, we need to pass the `voteController` to these new instances of the view controllers, as they are not the same instances that the tab bar controller will pass the vote controller to.

1. Call the `prepare(for segue: ...)` method.
2. If the segue's identifier matches that of either identifier of the embed segues, then get the destination view controller and cast it as `VoteControllerProtocol`. Remember that this is how the tab bar controller knows if its view controllers have a `voteController` property. We're using it here because we again need to pass the `voteController`, so the protocol works fantastic here as well.
3. If the cast is successful, pass the `voteController` to the cast destination view controller.

As an aside, instead of checking whether the destination view controller conforms to the VoteControllerProtocol, you could simply cast the view controller as the actual subclass that it is (`VotingViewController` and `ResultsTableViewController` when checking their respective segue identifier) instead of casting them as `VoteControllerProtocol` in order to gain access to their `voteController`. Both ways are equally valid.

At this point, the application should work. Note that in the `CombinedViewController`, when you create a vote, the table view will not reload automatically until you go to another view controller and come back. There is a way to solve this, but we have not talked about it and it is not required to implement it. 

## Going Further

- Change your `Vote` model object to have a third property called `timestamp`. Its type should be `Date`. This will allow you to sort the votes in chronological order. Try to implement this.

- Change the table view's prototype cell to be a custom cell. Make a label for each property on the `Vote` model. If you did the previous challenge, make sure that includes showing the timestamp. As a sub-challenge, figure out how to format the timestamp into something that is more human-readable.

- As stated above, the table view in the combined view controller will not reload when a new vote is made from that same view controller without going to a new tab and coming back. Try to get this to work. (hint: a possible solution would be to use the `NotificationCenter` API)
