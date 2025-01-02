set shell := ["bash", "-cu"]

MANAGER := "pnpm"

dev:
    {{MANAGER}} run dev

cmd *args:
    {{MANAGER}} {{args}}
