FROM python:3.9-slim

# نصب shadowsocks به جای کتابخانه‌های نامعتبر
RUN pip install shadowsocks

# اجرای مستقیم سرور shadowsocks که یک پراکسی SOCKS5 کامل است
# این دستور روی پورت ۸۰۰۰ با رمز عبور مشخص اجرا می‌شود
CMD ["ssserver", "-p", "8000", "-k", "password123", "-m", "aes-256-cfb"]

EXPOSE 8000
