#  Lab 4: Test Automation with Robot Framework

โปรเจกต์นี้เป็นการทดสอบระบบลงทะเบียน (Workshop Registration) โดยใช้ **Robot Framework** และ **SeleniumLibrary** เพื่อตรวจสอบความถูกต้องของระบบตามเงื่อนไขที่กำหนด

##  รายละเอียดการทดสอบ (Test Scenarios)
1. **Open Registration Page Success**: ตรวจสอบการเปิดหน้าเว็บพื้นฐาน
2. **Invalid Phone Number**: ตรวจสอบระบบ Validation ผิด

##  สภาพแวดล้อมในการทดสอบ (Test Environment)
- **OS**: Windows 10
- **Language**: Python 3.14
- **Framework**: Robot Framework
- **Browser**: Google Chrome (Chrome for Testing)
- **Server**: Localhost Port 7272

##  วิธีการติดตั้งและรันโปรเจกต์

### 1. การเตรียม Server
ต้องเปิด Web Server เพื่อจำลองหน้าเว็บก่อนรัน Test:
```bash
python -m http.server 7272