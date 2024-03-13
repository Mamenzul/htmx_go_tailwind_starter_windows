# Run air with the specified configuration file
Start-Process -FilePath "air" -ArgumentList "-c", "./.air.toml" -NoNewWindow -PassThru | Wait-Process

# Run npx tailwind with the specified input and output files, and watch for changes
Start-Process -FilePath "npx" -ArgumentList "tailwind", "-i", "styles.css", "-o", "public/styles.css", "--watch" -NoNewWindow -PassThru | Wait-Process

# Run browser-sync with the specified configuration
Start-Process -FilePath "browser-sync" -ArgumentList "start", "--files", "'public/**/*.html, public/**/*.css'", "--port", "3001", "--proxy", "'localhost:3000'", "--middleware", "{res.setHeader('Cache-Control', 'no-cache, no-store, must-revalidate'); return next();}" -NoNewWindow -PassThru | Wait-Process
