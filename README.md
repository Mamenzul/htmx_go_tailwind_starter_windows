# Fullstack Go HTMX App with Tailwind for Windows

This application is a fullstack Go application with HTMX and Tailwind CSS.
There is `hot-reloading` for changes between html and style changes.
The Go server files are built into a single distributable file located in `/tmp/main.exe`. The HTML and CSS files are built to `./public/**/*`.

## Prerequisites

Before you begin, ensure you have installed the following:

- Go
- Air
- Browser-sync
- TailwindCSS

## Installation

Follow the steps below to install the necessary tools:

1. Install Go: Follow the instructions on the [official Go website](https://golang.org/doc/install) to install Go on your machine.

2. Install Air: Air is a live-reloading command line utility for Go applications in development. Install it using the following command:

```powershell
go install github.com/cosmtrek/air@latest
```

3. Install NPM deps:

```powershell
npm install
```

## Running the Application

After installing all the prerequisites and setting up the environment, you can start the application by running the `dev.sh` script. Use the following command in your terminal:

```powershell
.\dev.ps1
```

This will start the application. You should now be able to access it in your web browser at `http://localhost:3001` with hot reloading on code changes enabled.
