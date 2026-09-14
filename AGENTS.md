# AGENTS.md

**ASW Scheduler** is a personal, single-user fullstack web application that automates the weekly scheduling of English classes at American School Way through their Blocks system APIs: since ASW only releases slots for the next business day within a narrow daily window (reopening at 4:40 AM America/Bogota), the app lets the owner configure their preferred days once per week and automatically books the selected slots the exact moment scheduling reopens, avoiding lost classes and manual checking.

## Rules

### 01. Data and Migrations

- Prisma is the only way to access, manipulate, and handle data. Never use raw SQL clients, `pg` connections, or direct database queries.
- Migrations must always be created without a descriptive name (never pass `--name`), so migration folders expose only their timestamp.
