---
status: "accepted"
date: 2024-10-01
decision-makers: Stephan Johansen (@skjohansen)
---

# Use of Markdown for Documentation

## Context and Problem Statement

The Tic-Tac-Toe console application is part of a programming exercise with a strong focus on Test-Driven Development (TDD) and modern software development practices. Clear, well-structured documentation is crucial to ensure maintainability, collaboration, and ease of understanding for developers working on the project.

Several documentation formats could be used for the project (e.g., plain text, Word documents, LaTeX), but Markdown has emerged as the preferred option due to its simplicity, flexibility, and widespread adoption in the development community.

Additionally, the documentation for this project is intended to be versioned alongside the codebase, located in the `/docs` directory of the repository, making accessibility and readability important.

## Decision Drivers

* Documentation should follow code (git is the truth)
* Low requirement of need for tooling

## Considered Options

1. **Markdown**: Simple with basic formatting capabilities

1. **Plain Text**: While simple, plain text lacks the formatting capabilities of Markdown, such as headers, links, and lists. Markdown offers more structure and readability while still being lightweight.

1. **Rich Text Formats (e.g., Word Documents)**: Word documents or other rich text formats offer more advanced formatting options, but they are less suited for version control and developer workflows. Additionally, they are not as easily viewable in raw form.

1. **LaTeX**: LaTeX is powerful for technical documents, but its complexity would be overkill for this project. It also presents a steeper learning curve, which contradicts the goals of simplicity and accessibility.

## Decision Outcome

All documentation should be done using **Markdown** (`.md` format) and store the files in the `/docs` folder within the project's root directory, and versioned alongside the project source code.

### Positive Consequences

1. **Simplicity**:  
   Markdown is easy to learn and write. Its lightweight syntax allows developers to focus on content without dealing with complex formatting or tooling. The simplicity of Markdown aligns with the project's educational nature, making it more accessible to contributors.

2. **Readability**:  
   Markdown files are human-readable in their raw form, even without rendering. This is particularly useful for developers who can easily understand the content using a plain text editor or viewing the raw files in a version control system.

3. **Widespread adoption in development workflows**:  
   Markdown is extensively used in modern development practices, especially in open-source projects and documentation tools. Many platforms (GitHub, GitLab, Bitbucket) natively render Markdown, allowing documentation to be easily viewed online without additional tooling.

4. **Version Control Compatibility**:  
   Markdown files are plain text, which integrates seamlessly with Git or any other version control system. This ensures that changes to documentation are tracked alongside code changes, promoting consistency in updates and better collaboration.

5. **Tooling Support**:  
   Many modern editors (e.g., Visual Studio Code, Sublime Text) offer built-in support for Markdown with features such as live preview, spell-checking, and syntax highlighting. This enhances the developer experience when creating or editing documentation.

6. **Consistency in Project**:  
   The use of Markdown ensures that all project documentation, including code comments, README files, and additional resources, remains consistent. It aligns with common practices in modern software development where Markdown is a standard for README and ADR files.

7. **Portability**:  
   Markdown can be easily converted to other formats such as HTML, PDF, or DOCX using tools like Pandoc. This makes the documentation portable and adaptable to different presentation needs without rewriting the source content.

## Pros and Cons of the Options 

### Markdown as the format for documentation
* Good, because developers will have a streamlined, consistent format for all documentation.
* Good, because Markdown lowers the barrier for contributing to or reviewing documentation, particularly for developers familiar with software development practices.
* Good, because the project adheres to a well-established standard for writing technical documentation in modern software projects.
* Bad, because markdown has some limitations in complex formatting (e.g., tables, figures) compared to other formats like LaTeX or rich text editors.
* Bad, becuse it will require non-developers to learn Git and Markdown in order to directly contribute to the documentation.

## More information
It's likely that more decisions is needed to suplement this, in order to address types of documentation which is naturaly or easily described using markdown, eg. figures and architecture.

