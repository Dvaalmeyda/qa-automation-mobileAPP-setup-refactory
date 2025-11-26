# Setup QA Automation tools untuk Mobile APP

Project ini bertujuan memastikan bahwa Appium, Robot Framework, dan AppiumLibrary dapat berjalan dengan baik untuk kebutuhan mobile automation testing menggunakan emulator Android.

## Tujuan

Menggunakan demo app dan test case untuk menguji keberhasilan setup

## Tools yang digunakan

| Kategori                 | Tools                        | Versi     | Fungsi                          |
| ------------------------ | ---------------------------- | --------- | ------------------------------- |
| Testing Framework        | Robot Framework              | 6.x / 7.x | Framework utama berbasis Python |
| Mobile Automation Server | Appium Server                | 2.x       | Mengontrol perangkat/emulator   |
| Library Robot            | robotframework-appiumlibrary | 2.x       | Keyword mobile untuk Robot      |
| Mobile Environment       | Android Studio + SDK         | Latest    | Emulator Android & ADB tools    |
| Perangkat                | Android Emulator             | API 16+   | Versi android /API untuk testing     |


## Cara instalasi dan setup

### Prerequisites
1. Install Appium
```
sudo apt install nodejs npm
npm install -g appium
appium -v
```
2. Install uiautomator2 
```
appium driver install uiautomator2
```
3. Install Android Studio
4. Buat virtual device di Android Studio, dan jalankan
5. Jalankan Appium
```
appium
```

### Run This Project

1. Clone repository berikut
```
git clone https://github.com/<username>/<repo>.git
cd <repo>
```
2. Buat Virtual Environment dan aktifkan
```
source venv/bin/activate
```
3. Installasi depedensi
```
pip install -r requirements.txt
```
4. Jalankan test case dengan code
```
robot tests/demoTest.robot
```

## Hasil

Jika berhasil, akan muncul keterangan seperti berikut:

![img](https://github.com/user-attachments/assets/9e3e4de6-b78c-4465-9cf1-c3efb8e1c86d) 
