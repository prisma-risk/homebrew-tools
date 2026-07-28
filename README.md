# Prisma Risk Tools

Homebrew tap and release host for Prisma Risk customer tools.

## airlift

`airlift` uploads files to your Prisma Risk destinations. No AWS credentials
or SFTP required: authenticate with your organization's API key, and only
changed files are transferred.

### macOS and Linux (Homebrew)

Install:

```sh
brew install prisma-risk/tools/airlift
```

Upgrade:

```sh
brew upgrade airlift
```

Install a specific version:

```sh
brew install prisma-risk/tools/airlift@0.1.0
```

### Windows

1. Open the [releases page](https://github.com/prisma-risk/homebrew-tools/releases)
   and download `airlift-vX.Y.Z-x86_64-pc-windows-msvc.zip` for the version
   you want.
2. Optionally verify the download. In PowerShell:

   ```powershell
   Get-FileHash .\airlift-vX.Y.Z-x86_64-pc-windows-msvc.zip -Algorithm SHA256
   ```

   The hash must match the contents of the matching `.sha256` file on the
   releases page.
3. Extract the zip and follow the bundled `README.txt` to put `airlift.exe`
   on your `PATH`.

### Getting started

```sh
airlift login                                # store your API key
airlift destinations                         # list destinations you can push to
airlift upload --dest <destination> <paths>  # upload files or folders
```

Your Prisma Risk representative provides your organization's API key.

## Support

Contact your Prisma Risk representative.

Binaries distributed through this tap are proprietary software.
Copyright (c) 2026 Prisma Risk. All rights reserved.
