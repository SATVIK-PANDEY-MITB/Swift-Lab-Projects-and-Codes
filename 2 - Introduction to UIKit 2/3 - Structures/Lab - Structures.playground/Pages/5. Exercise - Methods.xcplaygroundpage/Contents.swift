/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
}

func Description(_ book: Book) {
    print("Title: \(book.title)")
    print("Author: \(book.author)")
    print("Pages: \(book.pages)")
    print("Price: $\(book.price)")
}

let myBook = Book(title: "Swift Programming", author: "Apple", pages: 500, price: 39.99)
Description(myBook)
//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
}

func like(_ post: inout Post) {
    post.likes += 1
}

var post1 = Post(message: "Hello, world!", likes: 0, numberOfComments: 0)
print("Post Message: \(post1.message)")
print("Likes: \(post1.likes)")
print("Number of Comments: \(post1.numberOfComments)")

like(&post1)

print("Post Message: \(post1.message)")
print("Likes: \(post1.likes)")
print("Number of Comments: \(post1.numberOfComments)")

/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
