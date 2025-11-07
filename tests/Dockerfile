# Base image with Node + browsers (Playwright) preinstalled
FROM mcr.microsoft.com/playwright:v1.49.0-jammy

# Install Python + pip
RUN apt-get update && apt-get install -y python3 python3-pip && apt-get clean

# Set working directory
WORKDIR /tests

# Install Robot Framework and Browser library
RUN pip install robotframework 
RUN pip install robotframework-browser

# Initialize Playwright browsers (Chromium, Firefox, WebKit)
RUN rfbrowser init

# Copy your tests into the container
COPY . .

# Default command runs all tests in this directory
CMD ["robot", "."]
