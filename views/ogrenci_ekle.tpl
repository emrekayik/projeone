<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>{{ title }}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

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
        <h1>SoftWeal</h1>
      </a>
    </section>

    <section class="navbar-section green">
      <a href="..." class="navbar-brand mr-2">Öğrenci Ekle</a>
      <a href="..." class="btn btn-link">Öğrencileri Göster</a>
      <a href="https://github.com/Softweal/projeone" class="btn btn-link">GitHub</a>
    </section>
  </header>

  <h1>
    {{ content }}
  </h1>
  <!-- Öğrenci sınav notu ekleme formu -->

  <form action="\ogrenci_ekle" method="post">
    <div class="form-group">
      <label for="studentName">Öğrenci Adı</label>
      <input type="text" class="form-control" id="studentName" placeholder="Öğrenci Adı" name="ogrenciAdi">
    </div>
    <div class="form-group">
      <label for="studentSurname">Öğrenci Soyadı</label>
      <input type="text" class="form-control" id="studentSurname" placeholder="Öğrenci Soyadı" name="ogrenciSoyadi">
    </div>
    <div class="form-group">
      <label for="studentNumber">Öğrenci Numarası</label>
      <input type="number" class="form-control" id="studentNumber" placeholder="Öğrenci Numarası" name="ogrenciNumarasi">
    </div>
    <div class="form-group">
      <label for="studentGrade">Öğrenci Sınav Notu</label>
      <input type="text" max="100" min="0" class="form-control" id="studentGrade" placeholder="Öğrenci Sınav Notu" name="ogrenciNotu">
    </div>
    <button type="submit" class="btn btn-primary">Gönder</button>
  </form>


  <script src="/js/main.js"></script>
</body>

</html>