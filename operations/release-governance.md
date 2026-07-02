# Release Governance

## Purpose

Release governance defines how Zylox Foundation versions, publishes and communicates changes.

Because Zylox Foundation is the base framework for future projects, every release must be traceable and understandable.

## Versioning model

Zylox Foundation uses semantic versioning:

```text
MAJOR.MINOR.PATCH
```

### MAJOR

Use for breaking conceptual or structural changes.

Examples:

- Removing or renaming core modules.
- Changing the foundation governance model.
- Replacing the versioning strategy.
- Introducing incompatible structural conventions.

### MINOR

Use for new modules, major sections or significant new capabilities.

Examples:

- Adding `product/`.
- Adding `ai/`.
- Adding `operations/`.
- Adding `starter-kits/`.
- Adding a new reusable governance area.

### PATCH

Use for hardening, fixes, consistency updates or operational improvements.

Examples:

- Adding branch protection documentation.
- Adding CODEOWNERS.
- Fixing README inconsistencies.
- Improving templates.
- Clarifying policies.

## Current release

```text
0.6.1
```

Release type:

```text
PATCH
```

Reason:

`0.6.1` adds repository governance and operational hardening, but does not introduce a new top-level module.

## Required release artifacts

Every versioned release must include:

- Updated `VERSION`.
- Updated root `CHANGELOG.md`.
- Updated affected module changelog.
- Updated README when structure, process or usage changes.
- Decision log update when governance or architecture decisions change.
- Git tag using the version number.
- GitHub Release when the version is published.

## Release checklist

Before tagging a release:

- [ ] All intended files are merged into `main`.
- [ ] `VERSION` matches the release version.
- [ ] Root `CHANGELOG.md` includes the version entry.
- [ ] Affected module changelogs are updated.
- [ ] README files are consistent.
- [ ] Decisions are documented if needed.
- [ ] No placeholder text remains in enforced policies.
- [ ] Branch protection impact was reviewed.

## Recommended release flow

```bash
git checkout main
git pull origin main
git status
cat VERSION
git tag v0.6.1
git push origin v0.6.1
```

Then create a GitHub Release:

```text
Tag: v0.6.1
Title: Zylox Foundation v0.6.1 - Repository Governance
```

## GitHub Release notes template

```markdown
# Zylox Foundation v0.6.1 - Repository Governance

## Summary

This release adds operational governance for the Zylox Foundation repository.

## Added

- CODEOWNERS template.
- Pull Request template.
- GitHub branch protection policy.
- CODEOWNERS policy.
- Release governance policy.

## Updated

- VERSION updated to 0.6.1.
- Root changelog updated.
- Operations changelog updated.
- Decisions log updated with repository governance decision.

## Notes

Before enabling `Require review from Code Owners`, verify that `@exerobledo-personal` and `@franco9652` have access to the repository.
```

## Rollback guidance

If a release introduces an incorrect governance policy:

1. Do not delete the tag unless the release was created by mistake and has not been consumed.
2. Create a corrective patch release.
3. Document the correction in the changelog.
4. Reference the original decision or PR.

## Related documents

- `operations/github-branch-protection.md`
- `operations/codeowners.md`
- `.github/CODEOWNERS`
- `.github/pull_request_template.md`
- `templates/operations/release-checklist-template.md`
