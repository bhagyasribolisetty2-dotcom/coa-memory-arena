# COA Arena: Memory World

An interactive Computer Organization and Architecture learning game about memory organization.

- **Live website:** https://coa-memory-arena.higgsfield.app/
- **Public repository:** https://github.com/bhagyasribolisetty2-dotcom/coa-memory-arena

## Get the website source

The complete readable source and configuration contains 582 files, stored as ordered archive parts in `source-code-parts/`.

1. Download the repository as a ZIP using GitHub's **Code → Download ZIP** button.
2. Extract that ZIP.
3. Open PowerShell in the extracted repository folder and run:

```powershell
.\unpack-source.ps1
```

This rebuilds and extracts the source into `source/`. Browse the website code in `source/app/src/`.

## Media assets

The full bundle containing the large video, audio, image, and font assets is available here:

[Download the complete website bundle](<https://d2ol7oe51mr4n9.cloudfront.net/user_3L8XCLiAp4WJddLWtk0N0FpUyfd/4125a279-a456-4441-9cca-a1b1d7d2f7a2.zip>)

## Run locally

Install Bun, then run these commands from `source/app`:

```sh
bun install
bun run dev
```
