FROM python:3.7.10-stretch

# Working directory
WORKDIR /app

# Copy source code to working directory
COPY . hello.py /app/

# Install packages from requirements.txt
RUN pip install --upgrade pip && \
        pip install --trusted-host pypi.python.org -r requirements.txt