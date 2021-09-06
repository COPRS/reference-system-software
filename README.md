# Exemples
The purpose of this branch is to build, scan and store custom docker images that are used in other workflows in the reference-system repository.

## Pandoc
Custom docker image of Pandoc is needed to convert word documents to GitHub Flavored Markdown document in https://github.com/COPRS/reference-system/blob/4746988b13625f7b925440d91c24f6acb0d535e9/.github/workflows/word2gfm.yml#L15
```
      - name: Create GitHub Flavored Markdown file
        uses: docker://ghcr.io/coprs/reference-system:dependencies_pandoc
        with:
          args: bash -c "find input -mindepth 2 -type f -name '*.docx' -print0 | xargs -0 -n2 -P2 -I{} pandoc -s {} -t gfm --extract-media=input -o {}.md"
```

## wkhtmltopdf
A docker image of wkhtmltopdf is needed to convert HTML to PDF in any docker-ci.yaml workflow, for e.g. https://github.com/COPRS/reference-system/blob/d73e03a43e433477e990f53f9204230f08805030/.github/workflows/docker-ci.yaml#L100
```
      - name: Convert HTLM to PDF
        uses: docker://ghcr.io/coprs/reference-system:dependencies_wkhtmltopdf
        with:
          args: vulnerabilities.html vulnerabilities.pdf
```
