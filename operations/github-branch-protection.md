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
