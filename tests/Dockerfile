# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /tests

# Install Robot Framework
RUN pip install --no-cache-dir robotframework

# Copy all test files into the container
COPY . .

# Default command runs tests in the current directory (.)
CMD ["robot", "."]
