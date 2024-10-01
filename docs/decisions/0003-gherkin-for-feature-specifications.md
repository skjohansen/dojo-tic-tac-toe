---
status: "accepted"
date: 2024-10-01
decision-makers: Stephan Johansen (@skjohansen)
---

# Gherkin for feature specifications 

## Context and Problem Statement
The Tic-Tac-Toe console application is being developed as part of a programming exercise with a strong emphasis on Test-Driven Development (TDD) and modern software development practices. The project is built using C# and .NET, and the main goal is to ensure the software is maintainable, testable, and adheres to industry "best practices".

As the application is relatively simple, we still want to apply structured behavior-driven development (BDD) to ensure clear communication between stakeholders (if any), developers, and testers. Using a well-defined format for describing features ensures that tests can later be automated and integrated seamlessly into the development process. 

## Decision Drivers
- The project is focused on applying TDD, and feature specifications and slicing should enable this methodology.
- Specifications should be written in a format that can easily be understood by both technical and non-technical stakeholders.
- It should be possible to automate the feature specifications in the future eg. using SpecFlow.
- All specification files should be organized in a `/specs` directory to maintain project structure and readability.

## Considerd options
1. **Gherkin**: a structured, human-readable language used primarily in Behavior-Driven Development (BDD) to define the behavior of a software system. It is most commonly associated with the Cucumber and SpecFlow testing frameworks, but it can be used in a variety of programming languages and environments. Gherkin uses a simple and natural language syntax based on Given-When-Then statements, which make it easy to describe scenarios in terms of preconditions, actions, and expected outcomes.
1. **XSpec**: a behavior-driven development framework originally created for testing XSLT stylesheets, but it has been adapted for testing other languages, like XML and XQuery.
1. **The Robot Framework**: an open-source automation framework that uses keyword-driven testing. It allows you to write test cases in plain English using keywords, making it similar to Gherkin in terms of readability.
1. **FitNesse**: a wiki-based framework for performing acceptance testing. It uses tables and fixtures (code that connects the tables to the system) to express the desired behavior.
1. **Concordion**: a BDD framework that allows test specifications to be written in markdown or HTML format. Specifications are linked to Java (or other language) fixtures that drive the tests.

## Decision Outcome
Choosen option: **Gherkin**, because it seems to be the most widespread option and widely used within the industry. It's supported by several test-automatisation frameworks.

### Positive Consequences
1. **Gherkin Syntax**: Gherkin is a simple, readable language used to define features and their expected behavior in a Given-When-Then format. It is easy to understand for both technical and non-technical team members.
   
1. **Test-Driven Development (TDD)**: Gherkin naturally fits into a TDD workflow, allowing us to first define the expected behavior of the Tic-Tac-Toe game and then implement only the code required to make those behaviors pass.

1. **SpecFlow Integration**: SpecFlow, a .NET library that supports BDD, can be integrated into the project in the future to automate the Gherkin specifications. This allows the features described in Gherkin to be directly linked to executable tests, ensuring alignment between requirements and implementation.

1. **Modern Development Practices**: Writing specifications using Gherkin supports the goals of modern development practices such as automation, testing, and maintaining clear documentation. It also facilitates continuous integration/continuous delivery (CI/CD) practices in the future.

## Pros and Cons of the Options
### Improved Communication
* Good, because Gherkin syntax is easy to understand, even for non-developers, which improves the communication of requirements.
### Alignment with BDD and TDD
* Good, because the use of Gherkin ensures a strong alignment with BDD and TDD principles, enabling us to drive development through specifications and tests.
### Future Automation
* Good, because by using Gherkin now, we set the foundation for future automation with SpecFlow, ensuring that the specifications can be reused as automated tests with minimal friction.
### Specifications follows code
* Good, because storing all specification files in `/specs` maintains a clear and organized structure in the project.
* Good, because the versioning of specification is aligned with versioning of the code. Especially important if the testing a automated.
### Initial Learning Curve
* Good, because syntax reminds a bit of markdown 
* Bad, because for people unfamiliar with plain-text and Git, there might be a slight learning curve in adopting this approach.

## Links
- [Gherkin Syntax Guide](https://cucumber.io/docs/gherkin/)

## More information
All specification files should be stored in the `/specs` directory of the project, ensuring a clean and organized project structure.
