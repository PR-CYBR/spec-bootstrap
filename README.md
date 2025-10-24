# Spec-Bootstrap

A language-agnostic Spec-Kit template for spec-driven development. This template provides a foundational structure that can be adapted for any technology stack while maintaining a specification-first approach to software development.

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

## Spec-Kit Commands

The Spec-Kit framework provides the following conceptual commands for managing your project specifications:

### `/speckit.constitution`

View the project constitution, which defines principles and governance:

```bash
cat .specify/constitution.md
```

This displays the foundational principles that guide the project, including:
- Specification-driven development approach
- Language-agnostic philosophy
- Incremental planning methodology
- Automation-first mindset

### `/speckit.specify`

View the technical specifications:

```bash
cat .specify/spec.md
```

This shows:
- Directory structure requirements
- Command specifications
- Workflow requirements
- Extensibility guidelines
- Non-functional requirements

### `/speckit.plan`

View the implementation plan:

```bash
cat .specify/plan.md
```

This displays:
- Project phases and milestones
- Task organization approach
- Development workflow guidance
- Success metrics

### `/speckit.tasks`

List and view individual tasks:

```bash
# List all tasks
ls -la .specify/tasks/

# View a specific task
cat .specify/tasks/<task-name>.md

# Find tasks (example)
find .specify/tasks -name "*.md" -type f
```

## Directory Structure

```
spec-bootstrap/
├── .github/
│   └── workflows/
│       ├── spec-kit.yml                    # Automation workflow
│       └── markdown-link-check-config.json # Link validation config
├── .specify/
│   ├── constitution.md                     # Project principles
│   ├── spec.md                            # Technical specifications
│   ├── plan.md                            # Implementation plan
│   └── tasks/                             # Individual task specs
│       └── example-task.md                # Example task template
└── README.md                              # This file
```

## Automation Workflow

The `.github/workflows/spec-kit.yml` workflow automatically:

- ✅ Validates required files exist
- ✅ Checks Markdown syntax
- ✅ Verifies links in documentation
- ✅ Lists current tasks

This workflow runs on:
- Pushes to `main` or `master` branch
- Pull requests targeting `main` or `master` branch

## Customizing for Your Project

This template is designed to be language-agnostic. To adapt it for your project:

### 1. Update Core Documents

Edit the specification files to match your project:

```bash
# Customize the constitution
vim .specify/constitution.md

# Add your technical requirements
vim .specify/spec.md

# Update the implementation plan
vim .specify/plan.md
```

### 2. Add Your Technology Stack

The template intentionally contains no language-specific code. Add your chosen stack:

```bash
# Example: Node.js project
npm init -y

# Example: Python project
python -m venv venv
pip install -r requirements.txt

# Example: Go project
go mod init yourproject

# Example: Rust project
cargo init
```

### 3. Create Tasks

Add task specifications to guide development:

```bash
# Create a new task
cat > .specify/tasks/001-setup-database.md << 'EOF'
# Task: Setup Database

## Objective
Configure the project database and migrations

## Requirements
- [ ] Choose database technology
- [ ] Set up connection configuration
- [ ] Create initial schema
- [ ] Add migration tooling

## Status
Not Started
EOF
```

### 4. Extend Automation

Add technology-specific checks to `.github/workflows/spec-kit.yml`:

```yaml
# Example additions:
- name: Run tests
  run: npm test

- name: Lint code
  run: npm run lint

- name: Build project
  run: npm run build
```

### 5. Update Documentation

Modify this README to describe your specific project, keeping the Spec-Kit command reference for team members.

## Development Workflow

1. **Review specifications** before starting work
2. **Create task files** for new features or changes
3. **Implement code** according to specifications
4. **Update plan** as work progresses
5. **Validate** using the automation workflow

## Best Practices

- **Keep specifications current**: Update `.specify/` files as requirements evolve
- **Write granular tasks**: Each task should be focused and achievable
- **Review constitution periodically**: Ensure principles still align with project needs
- **Automate everything**: Extend workflows to reduce manual processes
- **Document decisions**: Use task files to record technical decisions

## Why Spec-Kit?

**Specification-driven development** ensures:
- 📋 Clear requirements before coding begins
- 🎯 Focused, purposeful development
- 📚 Living documentation that stays current
- 🔄 Easy onboarding for new team members
- ✅ Measurable progress and completion criteria

**Language-agnostic approach** provides:
- 🔧 Flexibility to choose the right tools
- 🔄 Easy migration between technologies
- 👥 Consistent process across different stacks
- 📖 Universal understanding of project structure

## Contributing

When contributing to a project using this template:

1. Read `.specify/constitution.md` to understand project principles
2. Review `.specify/spec.md` for technical requirements
3. Check `.specify/plan.md` for current priorities
4. Look at `.specify/tasks/` for available work items
5. Follow the development workflow outlined above

## License

This template is provided as-is for use in any project. Customize freely to meet your needs.

## Support

For questions or suggestions about the Spec-Kit framework:
- Review the specification files in `.specify/`
- Check the example task template
- Examine the automation workflow

---

**Getting Started**: Run `/speckit.constitution`, `/speckit.specify`, `/speckit.plan`, and `/speckit.tasks` to familiarize yourself with the project structure.
