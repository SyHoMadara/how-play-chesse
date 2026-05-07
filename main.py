import asyncio
import socks5

# این اسکریپت روی پورت ۸۰۰۰ گوش می‌دهد
async def main():
    server = await socks5.start_server(host='0.0.0.0', port=8000)
    print("SOCKS5 Proxy is running on port 8000")
    async with server:
        await server.serve_forever()

if __name__ == "__main__":
    asyncio.run(main())
