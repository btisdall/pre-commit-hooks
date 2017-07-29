# Pre-commit-hooks

Ben Tisdall's pre-commit hooks.

# Hooks in this repository

* `cfn-validate` - simple CloudFormation template validation.

# Using pre-commit-hooks with [pre-commit](http://pre-commit.com/)

Add this to your `.pre-commit-config.yaml`

```
-   repo: git@github.com:btisdall/pre-commit-hooks.git
    sha: v0.9.1  # Use the ref you want to point at
    hooks:
    -   id: cfn-validate
```

For further configuration information see the [pre-commit documentation](http://pre-commit.com/#plugins)
