# Base image with Node + browsers (Playwright) preinstalled
FROM mcr.microsoft.com/playwright:v1.49.0-jammy

# Install Python + pip
RUN apt-get update && apt-get install -y python3 python3-pip curl && apt-get clean

# Set working directory
WORKDIR /tests

# Install Robot Framework + Browser library
RUN pip install --no-cache-dir robotframework robotframework-browser

# Initialize Playwright browsers
RUN rfbrowser init

# Copy tests into container
COPY . .

# Default command runs all tests in this directory
CMD ["robot", "."]
