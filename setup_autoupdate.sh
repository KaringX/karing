#!/bin/bash
set -e

echo "=== Setting up auto-update system ==="

OWNER="jsonmor"
REPO="karing"
PAGES_URL="https://${OWNER}.github.io/${REPO}"

# -------------------------------------------------------
# Step 1: Patch autoUpdate URL in remote_config.dart
# -------------------------------------------------------
echo "[1/2] Patching autoUpdate URL -> ${PAGES_URL}/autoupdate.json ..."
CONFIG="lib/app/modules/remote_config.dart"

if [ ! -f "$CONFIG" ]; then
  echo "ERROR: $CONFIG not found. Run this from the repo root."
  exit 1
fi

sed -i 's|static const String kDefaultAutoUpdate =.*|static const String kDefaultAutoUpdate = "'"${PAGES_URL}/autoupdate.json"'";|' "$CONFIG"
echo "  done: $CONFIG"

# -------------------------------------------------------
# Step 2: Create GitHub Actions workflow
# -------------------------------------------------------
echo "[2/2] Creating workflow ..."
mkdir -p .github/workflows

cat > .github/workflows/sync-upstream-releases.yml << 'WFEOF'
name: Sync upstream releases & update feed

on:
  schedule:
    - cron: '0 */6 * * *'
  release:
    types: [published]
  workflow_dispatch:

permissions:
  contents: write
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: false

jobs:
  sync-and-deploy:
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Sync upstream releases
        env:
          GH_TOKEN: ${{ github.token }}
          UPSTREAM: KaringX/karing
          FORK: ${{ github.repository }}
        run: |
          set -e
          echo "--- Fetching upstream releases ---"
          gh api "repos/${UPSTREAM}/releases?per_page=15" > /tmp/upstream.json

          echo "--- Fetching fork releases ---"
          gh api "repos/${FORK}/releases?per_page=100" > /tmp/fork.json 2>/dev/null || echo "[]" > /tmp/fork.json

          python3 << 'PYEOF'
          import json, subprocess, os

          upstream = os.environ["UPSTREAM"]
          fork = os.environ["FORK"]

          with open("/tmp/upstream.json") as f:
              up_rels = json.load(f)
          with open("/tmp/fork.json") as f:
              fork_rels = json.load(f)

          fork_tags = {r["tag_name"] for r in fork_rels}

          for rel in up_rels:
              tag = rel["tag_name"]
              if tag in fork_tags:
                  continue
              name = rel.get("name") or tag
              body = (rel.get("body") or "")[:5000]
              pre = str(rel.get("prerelease", False)).lower()
              print(f"Creating release {tag} ...")
              try:
                  subprocess.run([
                      "gh", "api", f"repos/{fork}/releases",
                      "--method", "POST",
                      "-f", f"tag_name={tag}",
                      "-f", f"name={name}",
                      "-f", f"body={body}",
                      "-F", f"prerelease={pre}",
                      "-F", "draft=false",
                      "-f", "target_commitish=remove-tracking",
                  ], check=True, capture_output=True, text=True)
                  print(f"  OK: {tag}")
              except subprocess.CalledProcessError as e:
                  print(f"  SKIP: {tag} ({e.stderr[:120]})")
          PYEOF

      - name: Generate autoupdate.json
        run: |
          set -e
          mkdir -p public

          echo "--- Downloading upstream autoupdate.json ---"
          curl -sfL "https://dot.karing.app/autoupdate.json" -o public/autoupdate.json

          python3 -c "
          import json
          with open('public/autoupdate.json') as f:
              d = json.load(f)
          print(f'  OK: {len(d)} entries')
          "

      - name: Setup Pages
        uses: actions/configure-pages@v4

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: ./public

      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
WFEOF

echo ""
echo "========================================="
echo "  DONE"
echo "========================================="
echo ""
echo "Created:"
echo "  .github/workflows/sync-upstream-releases.yml"
echo "  Patched kDefaultAutoUpdate in remote_config.dart"
echo ""
echo "Now run:"
echo "  git add -A"
echo "  git commit -m 'add auto-update system with upstream sync'"
echo "  git push"
echo ""
echo "Then in GitHub repo settings:"
echo "  1. Settings -> Pages -> Source: 'GitHub Actions'"
echo "  2. Settings -> Actions -> General -> Workflow permissions: 'Read and write permissions'"
echo "  3. Actions tab -> 'Sync upstream releases' -> 'Run workflow'"
echo ""
echo "After that, every 6 hours:"
echo "  - New KaringX releases are mirrored to your fork"
echo "  - autoupdate.json is published at:"
echo "    ${PAGES_URL}/autoupdate.json"
echo "  - Your app checks this URL for updates"
echo ""
