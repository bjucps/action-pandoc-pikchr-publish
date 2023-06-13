# Pandoc+Pikchr Publisher Action

Experimental container action for publishing Pandoc Markdown documents with embedded pikchr diagrams.

## Inputs

### `src-file`

**Required** The name of the Pandoc Markdown file to ingest/translate.

### `dst-format`

**Required** The format to use for output.  Default `"html"`

### `dst-file`

**Required** The filename under which to save the output.  Default `"output.html"`

## Example Usage

```yaml
uses: bjucps/action-pandoc-pikchr-publish
with:
  src-file: 'journal.md'
```
