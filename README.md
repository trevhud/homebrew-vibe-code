# Homebrew Tap for Vibe Code

This directory contains the Homebrew formula for Vibe Code. This will be the contents of the `homebrew-vibe-code` repository.

## Repository Setup

1. Create a new GitHub repository named `homebrew-vibe-code`
2. Copy the contents of this directory to that repository
3. Users can then install with:

```bash
brew tap trevhud/vibe-code
brew install vibe-code
```

## Formula Updates

The formula is automatically updated by:
- GitHub Actions on new releases
- Manual release script: `./scripts/create-release.sh`

## Local Testing

Test the formula locally before publishing:

```bash
brew install --build-from-source ./homebrew-setup/Formula/vibe-code.rb
```

## Directory Structure

```
homebrew-vibe-code/
├── Formula/
│   └── vibe-code.rb
└── README.md
```