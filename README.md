## 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

## 📖 Ruby OOP Based Library <a name="about-project"></a>

This project has two classes in Ruby - Person and Student. The Person class has instance variables for id, name, and age, as well as getters and setters for name and age. It also has a private method `is_of_age?` that returns true if the person's age is greater than or equal to 18, and a public method `can_use_services?` that returns true if the person is of age or has permission from their parents. The Student class inherits from the Person class and has a constructor that extends the parent's constructor by adding a classroom parameter. It also has a method `play_hooky` that returns a string.

### 🛠 Built With <a name="built-with"></a>

This project was built using the Ruby programming language.

### 🚀 Live Demo <a name="live-demo"></a>

There is no live demo for this project.

## 💻 Getting Started <a name="getting-started"></a>

To get started with this project, follow the instructions below.

### Setup <a name="setup"></a>

Clone the repository to your local machine:

```
git clone https://github.com/Shedrack-Sunday/Ruby-OOP-Library
```

### Prerequisites <a name="prerequisites"></a>

You will need to have Ruby installed on your local machine in order to run this project.

### Install <a name="install"></a>

There are no additional dependencies to install for this project.

### Usage <a name="usage"></a>

To run the Person class, you can use the following code:

```
person = Person.new(56, name: "Shedrack", parent_permission: false)
puts person.name # prints "Shedrack"
puts person.age # prints 56
puts person.can_use_services? # prints true
```

To run the Student class, you can use the following code:

```
student = Student.new(43, "Classroom 1", name: "Sussan", parent_permission: true)
puts student.name # prints "Sussan"
puts student.age # prints 46
puts student.classroom # prints "Classroom 1"
puts student.can_use_services? # prints true
puts student.play_hooky # prints "¯(ツ)/¯
```
## 👥 Authors <a name="authors"></a>

## Shedrack Sunday
- [Github](https://www.github.com/Shedrack-Sunday)

- [Linkedin](https://www.linkedin.com/in/Shedrack-Sunday)

- [Twitter](https://www.twitter.com/DeleSundayS)

## Akpuru Solomon Barine
 - [Github](https://www.github.com/Solobarine)

 - [Linkedin](https://www.linkedin.com/solomon-akpuru)

 - [Twitter](https://twitter.com/solomonakpuru)

## 🔭 Future Features <a name="future-features"></a>

- Add more methods and attributes to the Person and Student classes.
- Create additional classes that inherit from Person, such as Teacher and Parent.
- Implement functionality to store and retrieve Person and Student objects from a database.

## 🤝 Contributing <a name="contributing"></a>

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.


## ⭐️ Show your support <a name="support"></a>

Please ⭐️ this repository if you found the project useful.

## 🙏 Acknowledgements <a name="acknowledgements"></a>

- Hat tip to anyone whose code was used
- Inspiration
- etc

## ❓ FAQ <a name="faq"></a>

- **How do I run the project?**
  - Follow the instructions in the "Getting Started" section above.

## 📝 License <a name="license"></a>

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
