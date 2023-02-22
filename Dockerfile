# Use an official TeX Live image as the base image
FROM danteev/texlive:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any additional LaTeX packages needed
# RUN tlmgr update --self && tlmgr install <package-name>

# Compile the LaTeX document to a PDF
RUN pdflatex son_nguyen_resume.tex

# Expose port 80 for web access
EXPOSE 80

# Set the default command to run when the container starts
CMD ["pdflatex", "-interaction=nonstopmode", "son_nguyen_resume.tex"]
