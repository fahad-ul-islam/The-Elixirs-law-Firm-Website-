const fs = require('fs');
const files = fs.readdirSync('.').filter(f => f.endsWith('.html') && f !== 'updates.html');

for (let file of files) {
    let content = fs.readFileSync(file, 'utf8');
    let original = content;

    content = content.replace(/(<a\s+href="updates\.html"[^>]*>)\s*Law\s*Updates\s*(<\/a>)/gi, '$1Landmark Cases$2');
    content = content.replace(/(<a\s+href="updates\.html"[^>]*>)\s*Legal\s*Updates\s*(<\/a>)/gi, '$1Landmark Cases$2');
    content = content.replace(/(<a\s+href="updates\.html"[^>]*>)\s*Updates\s*(<\/a>)/gi, '$1Landmark Cases$2');
    // For when the existing text was already Landmark Cases but we re-run

    if (content !== original) {
        fs.writeFileSync(file, content);
        console.log("Updated links in", file);
    }
}
