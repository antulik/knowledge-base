// https://squidfunk.github.io/mkdocs-material/reference/data-tables/#column-alignment

  var tables = document.querySelectorAll("article table")
  tables.forEach(function(table) {
    new Tablesort(table)
  })

