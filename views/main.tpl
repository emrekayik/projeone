<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>{{ title }}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="GlobalAIHub Projectone">
  <meta name="author" content="Softweal Team">

  <!-- Styles -->
  <link href="/css/reset.css" rel="stylesheet">

  <link rel="stylesheet" href="\css\spectre.min.css">
  <link rel="stylesheet" href="\css\spectre-exp.min.css">
  <link rel="stylesheet" href="\css\spectre-icons.min.css">

  <link href="/css/style.css" rel="stylesheet">
</head>

<body>
  <header class="navbar p-2">
    <section class="navbar-section">
      <a href="/" class="navbar-brand">
        <h1 class="green">SoftWeal - Matematik Not Sistemi</h1>
      </a>
    </section>

    <section class="navbar-section">
      <a href="/ogrenci_ekle" class="navbar-brand mr-2 green">Öğrenci Ekle</a>
      <a href="/ogrenci_listele" class="btn btn-link green underline">Öğrencileri Listele</a>
      <a href="https://github.com/Softweal/projeone" class="btn btn-link green underline">GitHub</a>
    </section>
  </header>

  <div> {{ content }} </div>

  <!-- Read text file and write line by line -->



  <script src="/js/main.js"></script>
</body>

</html>