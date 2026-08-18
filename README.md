# toolAssisted.run — the archive

Every run on toolAssisted.run lives in this repository: movie files, metadata, notes,
and community verification records, as plain files. Clone it and you hold the whole
archive. Facts are stored; rankings and records are derived at site build time.

Layout: `systems.json` · `authors/<user>.json` · `games/<system>/<game>/{game.json,
categories.json, runs/M<id>.{json,<movie>,notes.md}}` · `schema/` (JSON Schema,
validated in CI).

Current contents: the first voluntary imports from TASVideos (see toolAssisted.run
DESIGN.md §7 for the import and licensing rules). Runs marked `imported` were
originally verified and reproduced by TASVideos staff and are credited and linked
to their source publications.
