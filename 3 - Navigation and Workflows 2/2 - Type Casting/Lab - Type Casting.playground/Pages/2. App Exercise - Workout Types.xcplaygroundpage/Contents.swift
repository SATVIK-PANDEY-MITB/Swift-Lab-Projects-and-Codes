/*:
 ## App Exercise - Workout Types

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 You fitness tracking app may allow users to track different kinds of workouts. When architecting the app, you may decide to have a `Workout` base class from which other types of workout classes inherit. Below are three classes. `Workout` is the base class with `time` and `distance` properties, and `Run` and `Swim` are subclasses that add more specific properties to the `Workout` class.

 Also provided is a `workouts` array that represents a log of past workouts. You'll use these classes and the array for the exercises below.
 */
// Base class
class Workout {
    var time: Double // in seconds
    var distance: Double // in meters

    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
}

// Subclass: Run
class Run: Workout {
    var cadence: Double // in steps per minute

    init(time: Double, distance: Double, cadence: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

// Subclass: Swim
class Swim: Workout {
    var stroke: String

    init(time: Double, distance: Double, stroke: String) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}

// Description functions
func describeRun(runningWorkout: Run) {
    print("Run - Time: \(runningWorkout.time) sec, Distance: \(runningWorkout.distance) m, Cadence: \(runningWorkout.cadence) spm")
}

func describeSwim(swimmingWorkout: Swim) {
    print("Swim - Time: \(swimmingWorkout.time) sec, Distance: \(swimmingWorkout.distance) m, Stroke: \(swimmingWorkout.stroke)")
}



/*:
 Now loop through each workout in `workouts` and, using type casting, call either `describeRun(runningWorkout:)` or `describeSwim(swimmingWorkout:)` on each. Observe what is printed to the console.
 */

// Sample workouts array
let workouts: [Workout] = [
    Run(time: 1800, distance: 5000, cadence: 160),
    Swim(time: 1200, distance: 1000, stroke: "Freestyle"),
    Run(time: 2400, distance: 7000, cadence: 170),
    Swim(time: 1500, distance: 1200, stroke: "Butterfly")
]

// Loop and call the appropriate description function
for workout in workouts {
    if let run = workout as? Run {
        describeRun(runningWorkout: run)
    } else if let swim = workout as? Swim {
        describeSwim(swimmingWorkout: swim)
    }
}


/*:

 _Copyright © 2018 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 2 of 2
