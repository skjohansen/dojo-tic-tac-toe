---
status: "accepted"
date: 2024-10-01
decision-makers: Stephan Johansen (@skjohansen)
---

# Main programming language and framework 

## Context and Problem Statement
The Tic-Tac-Toe game is a part of a programming exercise focusing on Test-Driven Development (TDD) and modern software development practices. The task is to implement the game ensuring a clean, maintainable codebase. Selecting the appropriate framework and programming language is crucial for achieving these goals effectively.
For future work should it be possible to apply principles such as SOLID, CI/CD, and other "best practices".

### Selection of programming language and framework

Before I start coding do I need to make sure I'm are using optimale language and framework.

## Decision Drivers

* Familiarity and expertise
* Development speed
* Support for modern software development practices
* Strong TDD support

## Considered Options

* C# and .NET
* Typescript and Node.JS
* Python
* F# and .NET
* C++
* Delphi / Pascal

## Decision Outcome
I will use **C#** and the **.NET framework** for the development of the Tic-Tac-Toe console application.

### Positive Consequences

1. **Familiarity and Expertise:**
   With 20 years of experience using C# and .NET, this choice allows for leveraging deep domain knowledge of the language and platform. This familiarity accelerates development, reducing the learning curve and ensuring focus on the core objectives, such as applying TDD and adhering to modern software development practices.

2. **Strong TDD Support:**
   C# and .NET provide robust support for TDD, with mature testing frameworks like **xUnit**, **NUnit**, and **MSTest**. These tools integrate seamlessly with IDEs such as **Visual Studio**, enabling efficient test-writing, refactoring, and code coverage analysis.

3. **Modern Software Development Practices:**
   The .NET ecosystem supports:
   - **SOLID principles** for designing clean, maintainable, and scalable code.
   - **Built-in Dependency Injection** for easier testability and inversion of control.
   - **Continuous Integration/Continuous Deployment (CI/CD)** integration with platforms such as GitHub Actions and Azure DevOps.

4. **Cross-Platform Compatibility:**
   With .NET Core and later versions, the framework is fully cross-platform, allowing the application to run on various operating systems, ensuring flexibility for both development and evaluation.

5. **Mature Ecosystem and Tooling:**
   .NET provides rich developer tools, such as:
   - **Visual Studio** with debugging, refactoring, and testing support.
   - **NuGet** for accessing a vast library of reusable packages.
   - **LINQ** for efficient data manipulation, which can simplify game logic.

6. **Scalability and Maintainability:**
   Although the project is a simple console application, .NET’s architecture ensures that the solution can be easily expanded with additional features, such as a graphical user interface or AI opponent.

## Pros and Cons of the Options 

### Choise of C# for programming and .NET as framework

* Good, because C# and .NET ensures leveraging a mature, well-supported technology stack while focusing on TDD and modern development practices.
* Good, because this decision aligns with existing expertise, minimizing risks and maximizing productivity for this exercise.
  