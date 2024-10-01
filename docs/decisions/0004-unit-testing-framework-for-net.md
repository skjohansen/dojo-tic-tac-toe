---
status: "accepted"
date: 2024-10-01
decision-makers: Stephan Johansen (@skjohansen)
---

# XUnit as unit testing framework 

## Context and Problem Statement

I'm developing a Tic-Tac-Toe console application as part of a programming exercise focusing on Test-Driven Development (TDD) and "modern software development practices." In [ADR 0001](docs/decisions/0001-base-programming-language-and-framework.md), I decided that the project will be implemented using .NET as the main programming language and framework.

A key element of the exercise is ensuring that the implementation follows TDD principles, meaning tests will be written before code, and the development process will involve frequent test execution. Choosing the right unit testing framework is crucial to support TDD efficiently.

Several unit testing frameworks are available for .NET, including MSTest, NUnit, and xUnit. We need to select a framework that aligns with our goals of following modern practices, facilitates writing clean and maintainable test code, and integrates well with our .NET development environment.

## Decision Drivers
* Need to work with C# and .NET, see [ADR 0001](docs/decisions/0001-base-programming-language-and-framework.md)
* Familiarity and expertise

## Considered Options
* **XUnit**: 
    xUnit is a popular, open-source unit testing framework for .NET that is widely used for Test-Driven Development (TDD). It features like constructor-based test setup, parallel test execution, and cleaner, more maintainable test code. xUnit is well-integrated into the .NET ecosystem.  

* **MSTest**:  
   MSTest is Microsoft's official test framework and has been part of the .NET ecosystem for a long time. However, it is generally considered less flexible and modern compared to xUnit. MSTest also has more verbose syntax, and some of its features are not as intuitive for TDD.

* **NUnit**:  
   NUnit is another popular testing framework that is also well-integrated into the .NET ecosystem. While it offers a rich set of features, xUnit was preferred due to its simpler design and closer alignment with TDD and modern development practices. xUnit's automatic support for parallelism and cleaner test structure gave it the edge over NUnit.


## Decision Outcome

Choosen option: XUnit, becuase it's the option I have the longest experience with, besides this it seems that Microsoft is to higher and higher pushes XUnit.

### Rationale

The reasons for selecting xUnit are as follows:

1. **TDD and Modern Practices Alignment**:  
   xUnit is designed with modern software development practices in mind. Its conventions (e.g., constructor-based test setup) promote cleaner and more maintainable test code, which fits well with the goals of the programming exercise.

2. **.NET Ecosystem Integration**:  
   xUnit is natively supported in the .NET ecosystem. It integrates seamlessly with .NET build and test tools, including Visual Studio, .NET CLI, and CI/CD pipelines. This makes it easier to automate test execution and ensure a smooth development workflow.

3. **Better Support for Object-Oriented Patterns**:  
   xUnit's design promotes the use of constructor-based test initialization rather than the traditional setup/teardown methods found in frameworks like NUnit or MSTest. This leads to tests that are more in line with object-oriented principles and reduces potential side effects between tests.

4. **Widely Used and Actively Maintained**:  
   xUnit is one of the most widely used testing frameworks in the .NET community, ensuring long-term support, good documentation, and community resources. Its active development means that it will likely stay up-to-date with the latest .NET features and practices.

5. **Parallel Test Execution**:  
   By default, xUnit allows parallel test execution, which can help reduce the time spent running tests, especially as the test suite grows. This feature is useful in supporting efficient development cycles with rapid feedback, a key component of TDD.

6. **Clearer Assertions and Better Failure Messages**:  
   xUnit provides more intuitive assertion methods, and failure messages tend to be more descriptive compared to other frameworks. This helps in debugging test failures and understanding why a particular test has failed.

7. **Community and Ecosystem**:  
   xUnit is a widely accepted standard in the .NET ecosystem, with strong community support. Many developers are already familiar with it, and its extensive use means that there are many available resources, libraries, and extensions that can be leveraged.


## Pros and Cons of the Options

### Improved Test Design  
* Good, because conventions promoted by xUnit will encourage writing well-structured and maintainable tests that are easier to understand and modify over time.

### Faster Test Execution  
* Good, because xUnit’s built-in parallel test execution can help in minimizing test run times, supporting faster feedback during development.

### Seamless Integration  
* Good, because xUnit’s tight integration with the .NET ecosystem and development tools will ensure an efficient development experience with minimal friction in setting up and running tests.

### Learning Curve  
* Bad, because for developers unfamiliar with xUnit, there might be a short learning curve.
* Good, beacuse the differences between xUnit and other test frameworks like NUnit and MSTest are not significant
* Good, because the framework’s popularity ensures abundant learning resources are available.

## Links

* [ADR 0001](docs/decisions/0001-base-programming-language-and-framework.md)
* [xUnit webpage](https://xunit.net/)
