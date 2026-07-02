# CODEOWNERS Policy

## Purpose

`CODEOWNERS` defines who must review changes in each area of Zylox Foundation.

Ownership does not mean that only those people can contribute. It means that those people are responsible for reviewing changes and protecting the consistency of the framework.

## Principles

- Ownership is a review responsibility.
- Ownership should be explicit.
- Ownership should avoid bottlenecks.
- Ownership should follow the structure of the foundation.
- Ownership should evolve as Zylox grows.

## Initial ownership model

At v0.6.1, Zylox Foundation uses a simple ownership model:

```text
Zylox Engineering Council owns the foundation globally.
```

Initial contributors:

- Exequiel Robledo
- Facu

For v0.6.1, `.github/CODEOWNERS` is configured with the initial GitHub users informed by the founding contributors.

## Required action before enforcement

Before enabling this GitHub setting:

```text
Require review from Code Owners
```

validate that these users have access to the repository:

```text
@exerobledo-personal
@franco9652
```

## Recommended future structure

When the Zylox GitHub organization is mature enough, use teams:

```text
@exerobledo-personal @franco9652
@zylox-technology/quality-governance
@zylox-technology/product-governance
@zylox-technology/ai-governance
@zylox-technology/operations-governance
```

Suggested mapping:

```text
/company/        @exerobledo-personal @franco9652
/engineering/    @exerobledo-personal @franco9652
/quality/        @zylox-technology/quality-governance
/product/        @zylox-technology/product-governance
/ai/             @zylox-technology/ai-governance
/operations/     @zylox-technology/operations-governance
/templates/      @exerobledo-personal @franco9652
/starter-kits/   @exerobledo-personal @franco9652
/examples/       @exerobledo-personal @franco9652
/knowledge-base/ @exerobledo-personal @franco9652
```

## Review expectations

A CODEOWNER review should validate:

- Alignment with Zylox principles.
- Correct module ownership.
- Reusability beyond a single project.
- Consistency with existing documents.
- Changelog and versioning impact.
- Whether an ADR/RFC/decision entry is required.

## When CODEOWNERS must be updated

Update `.github/CODEOWNERS` when:

- A new module is added.
- A module changes ownership.
- A new governance team is created.
- A contributor leaves or joins an ownership role.
- The repository structure changes.

## Anti-patterns

Avoid:

- One person owning everything forever.
- Using CODEOWNERS as hierarchy instead of review responsibility.
- Requiring too many owners for every small documentation change.
- Blocking delivery because ownership is unclear.
- Enforcing placeholder owners in GitHub.

## Related documents

- `.github/CODEOWNERS`
- `operations/github-branch-protection.md`
- `operations/release-governance.md`
