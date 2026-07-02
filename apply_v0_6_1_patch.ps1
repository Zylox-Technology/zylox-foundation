# Zylox Foundation v0.6.1 Governance Patch - Windows PowerShell
# Uso: copiar este archivo dentro de la raíz de zylox-foundation y ejecutar:
# powershell -ExecutionPolicy Bypass -File .\apply_v0_6_1_patch.ps1

$ErrorActionPreference = "Stop"

function Ensure-DirectoryForFile {
    param([string]$Path)
    $dir = Split-Path -Parent $Path
    if ($dir -and !(Test-Path $dir)) {
        New-Item -ItemType Directory -Force -Path $dir | Out-Null
    }
}

function Write-Utf8File {
    param(
        [string]$Path,
        [string]$Content
    )
    Ensure-DirectoryForFile -Path $Path
    Set-Content -Path $Path -Value $Content -Encoding UTF8
}

function Prepend-AfterTitleIfMissing {
    param(
        [string]$Path,
        [string]$Marker,
        [string]$Entry,
        [string]$DefaultTitle
    )

    if (Test-Path $Path) {
        $current = Get-Content -Path $Path -Raw
        if ($current -notmatch [regex]::Escape($Marker)) {
            $lines = Get-Content -Path $Path
            if ($lines.Count -gt 0) {
                $title = $lines[0]
                $rest = $lines | Select-Object -Skip 1
                $newContent = $title + "`r`n`r`n" + $Entry.TrimEnd() + "`r`n" + ($rest -join "`r`n")
                Set-Content -Path $Path -Value $newContent -Encoding UTF8
            } else {
                Set-Content -Path $Path -Value ($DefaultTitle + "`r`n`r`n" + $Entry.TrimEnd()) -Encoding UTF8
            }
        }
    } else {
        Set-Content -Path $Path -Value ($DefaultTitle + "`r`n`r`n" + $Entry.TrimEnd()) -Encoding UTF8
    }
}

function Append-IfMissing {
    param(
        [string]$Path,
        [string]$Marker,
        [string]$Entry,
        [string]$DefaultTitle
    )

    if (Test-Path $Path) {
        $current = Get-Content -Path $Path -Raw
        if ($current -notmatch [regex]::Escape($Marker)) {
            Add-Content -Path $Path -Value ("`r`n" + $Entry.TrimEnd()) -Encoding UTF8
        }
    } else {
        Ensure-DirectoryForFile -Path $Path
        Set-Content -Path $Path -Value ($DefaultTitle + "`r`n`r`n" + $Entry.TrimEnd()) -Encoding UTF8
    }
}

Write-Host "Applying Zylox Foundation v0.6.1 governance patch..." -ForegroundColor Cyan

if (!(Test-Path ".git")) {
    Write-Host "Warning: current folder does not look like a Git repository. Continuing anyway." -ForegroundColor Yellow
}

$content__github_CODEOWNERS = @'
# Zylox Foundation CODEOWNERS
#
# Ownership means review responsibility, not exclusive authorship.
# Initial owners configured for v0.6.1:
# - @exerobledo-personal
# - @franco9652
#
# Ownership can later move to GitHub teams when the Zylox organization matures.

# Global ownership
* @exerobledo-personal @franco9652

# Institutional foundation
/company/ @exerobledo-personal @franco9652

# Engineering standards
/engineering/ @exerobledo-personal @franco9652

# Quality standards
/quality/ @exerobledo-personal @franco9652

# Product standards
/product/ @exerobledo-personal @franco9652

# AI standards
/ai/ @exerobledo-personal @franco9652

# Operations standards
/operations/ @exerobledo-personal @franco9652

# Reusable templates
/templates/ @exerobledo-personal @franco9652

# Starter kits
/starter-kits/ @exerobledo-personal @franco9652

# Applied examples
/examples/ @exerobledo-personal @franco9652

# Context and continuity
/knowledge-base/ @exerobledo-personal @franco9652

# Repository-level governance files
/.github/ @exerobledo-personal @franco9652
/README.md @exerobledo-personal @franco9652
/CHANGELOG.md @exerobledo-personal @franco9652
/VERSION @exerobledo-personal @franco9652
'@

$content__github_pull_request_template_md = @'
# Pull Request

## Summary

Describe what this PR changes and why it matters.

## Scope

Select the impacted areas:

- [ ] company
- [ ] engineering
- [ ] quality
- [ ] product
- [ ] ai
- [ ] operations
- [ ] templates
- [ ] starter-kits
- [ ] examples
- [ ] knowledge-base
- [ ] repository governance

## Type of change

- [ ] Documentation
- [ ] Framework standard
- [ ] Template
- [ ] Starter kit
- [ ] Example
- [ ] Governance / operations
- [ ] Fix / consistency update

## Checklist

- [ ] The change is aligned with Zylox Foundation principles.
- [ ] The affected module README was updated, if needed.
- [ ] The affected module CHANGELOG was updated, if needed.
- [ ] The root README was updated, if needed.
- [ ] The root CHANGELOG was updated, if needed.
- [ ] VERSION was updated, if this is a versioned release.
- [ ] Decisions were documented in `knowledge-base/decisions-log.md`, if relevant.
- [ ] The change does not introduce vendor lock-in unless explicitly justified.
- [ ] The change is reusable beyond a single product or client.

## Quality and review notes

Explain how this change was reviewed or validated.

## Risks

Describe risks, trade-offs or follow-up work.

## Linked issues / decisions

Reference issues, ADRs, RFCs or decisions if applicable.
'@

$content_VERSION = @'
0.6.1
'@

$content_operations_codeowners_md = @'
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
'@

$content_operations_github_branch_protection_md = @'
# GitHub Branch Protection

## Purpose

Branch protection defines how Zylox Foundation prevents accidental, unreviewed or unsafe changes from reaching the main branch.

Zylox Foundation is not a single product repository. It is the institutional and technical base used to start and govern future projects. Because of that, changes to `main` must be intentional, reviewed and traceable.

## Protected branches

The following branches must be protected:

```text
main
master
```

If both exist, `main` should be treated as the primary branch and `master` should be deprecated or redirected.

## Minimum policy for v0.6.1

For `main`, configure the following GitHub branch protection rules:

### Pull requests

- Require a pull request before merging.
- Require at least `1` approval.
- Dismiss stale approvals when new commits are pushed.
- Require conversation resolution before merging.
- Do not allow direct pushes to `main`.

### Code owners

- Enable `Require review from Code Owners` only after `.github/CODEOWNERS` contains real GitHub users or teams.
- Until then, use the CODEOWNERS file as documented ownership guidance.

### Status checks

At v0.6.1, checks may not exist yet.

Recommended policy:

- Do not block PRs on missing CI checks until a first GitHub Actions workflow exists.
- Once CI exists, require all relevant checks before merge.
- At minimum, future checks should validate Markdown quality, broken links and repository consistency.

### Force push and deletion

- Block force pushes.
- Block branch deletion.

### Admin bypass

Recommended setting:

- Do not allow bypass for normal work.
- Allow emergency admin action only when documented in a change request or incident note.

## Recommended GitHub UI configuration

In GitHub:

```text
Settings
  Branches
    Branch protection rules
      Add branch protection rule
```

Use:

```text
Branch name pattern: main
```

Enable:

```text
Require a pull request before merging
Require approvals: 1
Dismiss stale pull request approvals when new commits are pushed
Require review from Code Owners
Require conversation resolution before merging
Block force pushes
Block deletions
```

Enable `Require review from Code Owners` only after replacing placeholders in `.github/CODEOWNERS`.

## Future policy

When Zylox Foundation introduces CI, the branch protection rule should evolve to include:

- Required Markdown validation.
- Required link validation.
- Required repository structure validation.
- Required changelog/version consistency check.
- Optional spelling/style validation for documentation.

## Merge strategy

Preferred strategy:

```text
Squash and merge
```

Reason:

- Keeps the history clean.
- Preserves PR-level traceability.
- Avoids noisy intermediate commits.

Alternative strategies must be justified in the PR.

## Required review mindset

Reviewers should check:

- Does this change belong in Zylox Foundation or in a product repo?
- Is it reusable beyond a single project?
- Does it preserve vendor neutrality where applicable?
- Are README, CHANGELOG and VERSION consistent?
- Does the change create unnecessary process overhead?
- Is the decision documented when it changes governance or architecture?

## Ownership

Branch protection is owned by:

```text
Zylox Engineering Council
```

Operational responsibility may be delegated to repository maintainers.

## Related documents

- `operations/codeowners.md`
- `operations/release-governance.md`
- `.github/CODEOWNERS`
- `.github/pull_request_template.md`
'@

$content_operations_release_governance_md = @'
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
'@

$snippet_ROOT_CHANGELOG_ENTRY = @'
## [0.6.1] - 2026-07-02

### Added
- Se agrega `.github/CODEOWNERS` como base para ownership y revisión por módulo.
- Se agrega `.github/pull_request_template.md` para estandarizar Pull Requests.
- Se agrega `operations/github-branch-protection.md` para documentar protección de ramas.
- Se agrega `operations/codeowners.md` para definir ownership operativo del repositorio.
- Se agrega `operations/release-governance.md` para definir versionado, tagging y GitHub Releases.

### Changed
- Se actualiza `VERSION` a `0.6.1`.
- Se formaliza governance operativo del repositorio antes de iniciar productos reales basados en Zylox Foundation.

### Decision
- `0.6.1` se define como patch release porque endurece operación y governance sin agregar un nuevo módulo raíz.
'@

$snippet_ROOT_README_SECTION = @'
## Repository Governance

Zylox Foundation is governed as a reusable institutional and technical framework.

The repository must be protected through:

- Pull Requests for changes to `main`.
- Required approvals.
- CODEOWNERS-based review once real GitHub users or teams are configured.
- Changelog and version consistency.
- Documented release governance.

Key governance files:

```text
.github/CODEOWNERS
.github/pull_request_template.md
operations/github-branch-protection.md
operations/codeowners.md
operations/release-governance.md
```

Before enabling required CODEOWNER reviews in GitHub, verify that `@exerobledo-personal` and `@franco9652` have access to the repository.
'@

$snippet_OPERATIONS_CHANGELOG_ENTRY = @'
## [0.6.1] - 2026-07-02

### Added
- Se agrega política de GitHub Branch Protection.
- Se agrega política de CODEOWNERS.
- Se agrega política de Release Governance.

### Changed
- Operations pasa a cubrir no solo operación de productos, sino también governance operativo del repositorio foundation.

### Decision
- La protección de ramas, ownership y releases quedan documentados como responsabilidades operativas de Zylox Foundation.
'@

$snippet_KNOWLEDGE_BASE_DECISIONS_ENTRY = @'
## DEC-007: Repository governance hardening

Se decidió agregar governance operativo real al repositorio `zylox-foundation` como patch release `0.6.1`.

Incluye:

- CODEOWNERS.
- Pull Request template.
- Branch protection policy.
- CODEOWNERS policy.
- Release governance policy.

Motivo:

- Zylox Foundation debe ser confiable antes de ser usado como base para productos reales.
- Los cambios al framework deben ser revisables, trazables y versionados.
- La operación del repositorio debe reflejar los mismos principios que Zylox promueve para sus proyectos.
'@

Write-Utf8File -Path ".github/CODEOWNERS" -Content $content__github_CODEOWNERS
Write-Utf8File -Path ".github/pull_request_template.md" -Content $content__github_pull_request_template_md
Write-Utf8File -Path "VERSION" -Content $content_VERSION
Write-Utf8File -Path "operations/codeowners.md" -Content $content_operations_codeowners_md
Write-Utf8File -Path "operations/github-branch-protection.md" -Content $content_operations_github_branch_protection_md
Write-Utf8File -Path "operations/release-governance.md" -Content $content_operations_release_governance_md

Prepend-AfterTitleIfMissing -Path "CHANGELOG.md" -Marker "[0.6.1]" -Entry $snippet_ROOT_CHANGELOG_ENTRY -DefaultTitle "# Changelog"
Append-IfMissing -Path "README.md" -Marker "Repository Governance" -Entry $snippet_ROOT_README_SECTION -DefaultTitle "# Zylox Foundation"
Prepend-AfterTitleIfMissing -Path "operations/CHANGELOG.md" -Marker "[0.6.1]" -Entry $snippet_OPERATIONS_CHANGELOG_ENTRY -DefaultTitle "# Operations Changelog"
Append-IfMissing -Path "knowledge-base/decisions-log.md" -Marker "DEC-007" -Entry $snippet_KNOWLEDGE_BASE_DECISIONS_ENTRY -DefaultTitle "# Decisions Log"

Write-Host "Patch applied successfully." -ForegroundColor Green
Write-Host "Next checks:" -ForegroundColor Cyan
Write-Host "  git diff --stat"
Write-Host "  git diff -- .github operations VERSION README.md CHANGELOG.md knowledge-base/decisions-log.md"
Write-Host "  git status"
