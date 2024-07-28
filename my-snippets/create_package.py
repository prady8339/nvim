import json
import os

snippet_home = os.path.expanduser("~/.config/nvim/my-snippets")
snippet_lang = ["cpp", "python"]
snippets = list()

for lang in snippet_lang:
    snippet_dirs = os.path.join(snippet_home, lang)
    for snippet_file_path in os.listdir(snippet_dirs):
        if snippet_file_path.endswith(".json"):
            path = os.path.join(snippet_dirs, snippet_file_path)
            snippets.append({"language": lang, "path": os.path.relpath(path)})


package_json = {
    "name": "my-snippets",
    "version": "1.0.0",
    "description": "My custom snippets",
    "main": "index.js",
    "author": "Pradyumna Singh",
    "license": "ISC",
    "contributes": {"snippets": snippets},
}

with open("package.json", "w") as f:
    json.dump(package_json, f, indent=2)
