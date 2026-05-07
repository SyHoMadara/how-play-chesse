# استفاده از یک ایمیج سبک پایتون
FROM python:3.9-slim

# تعیین دایرکتوری کاری
WORKDIR /app

# نصب پیش‌نیازها
RUN pip install socks5

# کپی کردن اسکریپت به داخل کانتینر
COPY main.py .

# باز کردن پورت ۸۰۰۰
EXPOSE 8000

# اجرای اسکریپت
CMD ["python", "main.py"]
