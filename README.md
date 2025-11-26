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

![img](https://github-production-user-asset-6210df.s3.amazonaws.com/122163249/519052019-4dfb9dfc-d667-4647-a629-bea9a14bf69c.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20251126%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20251126T075919Z&X-Amz-Expires=300&X-Amz-Signature=c4226b1346c2058b23d04cac7df8d27c08d81d101f6444a9ca7769a3acffe1be&X-Amz-SignedHeaders=host) 