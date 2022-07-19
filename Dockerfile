FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . flask_app/web.py /app/
COPY . nlib /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "web.py"]