# Spec-Bootstrap

[![Spec-Kit Validation](https://github.com/PR-CYBR/spec-bootstrap/actions/workflows/spec-kit.yml/badge.svg)](https://github.com/PR-CYBR/spec-bootstrap/actions/workflows/spec-kit.yml)

Spec-Bootstrap is a language agnostic template repository built on the Spec Kit specification-driven development framework. It provides a ready to use structure to capture your project’s constitution, specifications, implementation plans and tasks. This template ensures that your development process remains transparent, well‑documented, and consistent across projects.

## Usage

### Use as a Template

Click **Use this template** on the repository’s main page to scaffold a new project. GitHub will clone the files from this template (including the `.specify` directory and GitHub Actions workflows) into your new repository, so you can start specifying and planning your project immediately.

### Integrate into an Existing Project

To adopt Spec Kit in an existing repository, merge this repository into your project (via `git pull` or by copying files). Make sure to copy the `.specify` directory and `.github/workflows` folder into your project root. Adapt the `constitution.md`, `spec.md`, and `plan.md` files to match your project’s goals and update the tasks accordingly.

## Run Status Indicator

The badge above reflects the current status of the Spec Kit validation workflow on the `main` branch. It runs checks on required files, markdown syntax and link validation, and summarises tasks. A passing badge means the template structure is intact.

## License

This project will be released under the [MIT License](LICENSE).

## Quick Start

1. **Clone or Fork this repository**

   ```bash
   git clone https://github.com/PR-CYBR/spec-bootstrap.git
   cd spec-bootstrap
   ```

2. **Review the Constitution**

   ```bash
   cat .specify/constitution.md
   ```

3. **Explore the Specifications**

   ```bash
   cat .specify/spec.md
   ```

4. **Check the Implementation Plan**

   ```bash
   cat .specify/plan.md
   ```

5. **View Tasks**

   ```bash
   ls -la .specify/tasks/
   ```

## Spec Kit Commands

The Spec Kit framework has a set of conceptual commands that are represented by files in this template:

### `/speckit.constitution`

Displays the project constitution:

```bash
cat .specify/constitution.md
```

### `/speckit.specify`

Shows the high‑level requirements and user‑facing specifications:

```bash
cat .specify/spec.md
```

### `/speckit.plan`

Outlines the technical plan and architecture:

```bash
cat .specify/plan.md
```

### `/speckit.tasks`

Lists all defined tasks:

```bash
ls -la .specify/tasks/
```

## Contributing

Contributions are welcome! Please use the provided issue templates (see `.github/ISSUE_TEMPLATE/`) when reporting bugs or suggesting features. After discussion, feel free to open a pull request.
