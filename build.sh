
#!/bin/bash

# Check if zip file exists
if [ ! -f "UnconsciousSlategreyVolume.zip" ]; then
    echo "Error: project.zip not found"
    exit 1
fi

# Unzip the project
echo "Unzipping project..."
unzip -o project.zip

# Change into project directory
cd project || exit 1

# Install Python dependencies using Poetry
if [ -f "pyproject.toml" ]; then
    echo "Installing Python dependencies with Poetry..."
    poetry install
fi

echo "Build completed successfully!"
