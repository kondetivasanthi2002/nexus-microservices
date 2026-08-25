import zipfile

ZIP_PATH = r"C:\Users\pravallika\Desktop\nexus-microservices.zip"
with zipfile.ZipFile(ZIP_PATH, 'r') as z:
    names = z.namelist()
    print("Has .git directory:", any(n.startswith('.git/') for n in names))
    print("Has README.md:", 'README.md' in names)
    print("Has package-lock.json:", 'package-lock.json' in names)
    print("Has package.json:", 'package.json' in names)
    print("Total files in ZIP archive:", len(names))

    # Read README to verify sections
    readme = z.read('README.md').decode('utf-8')
    print("README has Installation:", '## Installation' in readme)
    print("README has Building:", '## Building' in readme)
    print("README has Running:", '## Running' in readme)
    print("README has Dependencies:", '## Dependencies' in readme)
