# Practical DevOps Exercise

You joined a team maintaining a small service that runs on AWS ECS Fargate. A recent infrastructure and CI/CD refactor was left incomplete and deployment is currently broken.

Your task is to investigate the repository and make it deployable.

## What to focus on

- Understand how the application, infrastructure, and CI/CD pipeline are supposed to work together.
- Identify and fix the issues preventing a successful build and deployment flow.
- Prefer small, targeted fixes over broad refactors.
- Avoid unrelated cleanup unless it directly helps restore deployability.

## Interview expectations

- Think out loud and explain your reasoning while working.
- AI tools are explicitly allowed and encouraged.
- Inspect AI suggestions before applying them.
- Assume you are taking over an existing repository rather than designing a new platform from scratch.

## Constraints

- You do not need an AWS account to get meaningful value from this exercise.
- Most issues should be discoverable through repository inspection, local validation, Docker builds, and CI/CD reasoning.
- The goal is practical debugging and delivery, not perfect architecture.

## Useful commands

```bash
python -m py_compile app/app.py
docker build -f app/Dockerfile .
terraform fmt -check -recursive infrastructure
terragrunt validate --terragrunt-working-dir infrastructure/environments/dev
```

## Repository layout

```text
.
├── app/
├── infrastructure/
│   ├── environments/
│   └── modules/
└── .github/
    └── workflows/
```
