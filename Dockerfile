FROM python:3.11-slim

WORKDIR /app

COPY requirements_public.txt .
RUN pip install --no-cache-dir -r requirements_public.txt

COPY replit_mcp_server.py .

EXPOSE 3001

CMD ["python", "replit_mcp_server.py"]