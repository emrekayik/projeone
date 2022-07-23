from bottle import route, run, static_file, get, post, request, view, error


import pandas as pd
from pandas import ExcelWriter

# 1- Kendinize bir ders belirleyiniz. (Matematik,Fizik, Lineer Cebir vb.)
# 2- Not aralığınızı oluşturunuz (100-80 ⇒ A, 79-70 ⇒ B vb.)
# 3- Öğrenci Bilgilerini (Ad, Soyad, Okul No, sınav puanı) girebileceğiniz ve bu bilgilerin tutulabileceği bir sistem oluşturunuz.
# 4- Girilen bilgilerden yola çıkarak öğrencinin dersi geçip geçmediğini göstermesi gerekmektedir.
# 5- Öğrenci dersi geçti ise öğrencinin bilgilerinin tutulduğu alana “Geçti” yazısı, öğrenci dersi geçemedi ise “kaldı” yazısını göstermesi gerekmektedir.
# 6- Notları girilen öğrencilerden dersi geçenleri ve geçmeyenleri gösteren bir Dataframe oluşturunuz. 
# 7- Oluşturulan Dataframe’i Excel tablosuna dönüştürünüz.

# ***************** #
# Helpers           #
# ***************** #
w=ExcelWriter('static/data/ogrenci_not_listesi.xlsx')
df_list =[]

# ***************** #
# Views             #
# ***************** #

@route('/js/<filename>')
def js_static(filename):
    return static_file(filename, root='./static/js')


@route('/img/<filename>')
def img_static(filename):
    return static_file(filename, root='./static/img')


@route('/css/<filename>')
def css_static(filename):
    return static_file(filename, root='./static/css')

@route('/data/<filename>')
def data_static(filename):
    return static_file(filename, root='./static/data')

@route("/")
@view("main")
def hello():
    return dict(
        title="Softweal - Matematik Not Sistemi", 
        content="Matematik Not Sistemi"
    )

@route("/ogrenci_ekle")
@view("ogrenci_ekle")
def ogrenci_ekle():
    return dict(
        title="Softweal - Matematik Not Sistemi", 
        content="Matematik Not Sistemi"
    )


@post('/ogrenci_ekle') # or @route('/login', method='POST')
def do_login():
    try:
        student_name = request.forms.get("ogrenciAdi")
        student_surname = request.forms.get("ogrenciSoyadi")
        student_number = request.forms.get("ogrenciNumarasi")
        student_grade = request.forms.get("ogrenciNotu")

        ###
        df = pd.DataFrame({'Ad': [ad],
                     'Soyad': [soyad],
                     'No': [no],
                     'Puan':[puan],
                     'Sonuç':[sonuc]})
        df_list.append(df)

        ###
        # write get data to text file
        with open("static/data/ogrenci_not_listesi.txt", "a") as myfile:
            # myfile.write(student_name + " " + student_surname + " " + student_number + " " + student_grade + "\n")
            myfile.write("{} {} {} {}\n".format(student_name, student_surname, student_number, student_grade))
        return "Öğrenci başarıyla eklendi."
    except Exception as e:
        return "Öğrenci eklenirken hata oluştu."
        

@route("/ogrenci_listele")
@view("ogrenci_listele")
def ogrenci_listele():
    return dict(
        title="Softweal - Matematik Not Sistemi", 
        content="Matematik Not Sistemi"
    )


@error(404)
def error404():
    return 'Üzgünüm, Bulamadık :('


run(host='localhost', port=5000)



