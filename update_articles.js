const fs = require('fs');

let content = fs.readFileSync('articles.html', 'utf8');

// 1. Article Box Background Customization
content = content.replace(/bg-\[#F9F9F9\] p-8 border border-\[#E5E5E5\]/g, 'bg-[#0a192f] p-8 border border-white/10');

// 2. Top Decorative Line
content = content.replace(/h-1 bg-navy scale-x-0 group-hover:scale-x-100/g, 'h-1 bg-gold scale-x-0 group-hover:scale-x-100');

// 3. Article Heading
content = content.replace(/<h2 class="text-\[22px\] font-serif text-navy/g, '<h2 class="text-[22px] font-serif font-bold text-gray-100');

// 4. Article Paragraph text
content = content.replace(/<p class="text-\[15px\] text-\[#555\]/g, '<p class="text-[15px] text-gray-300');

// 5. Read More hover color
content = content.replace(/hover:text-navy transition-colors flex items-center gap-2/g, 'hover:text-white transition-colors flex items-center gap-2');

fs.writeFileSync('articles.html', content);
console.log("Updated articles.html");
