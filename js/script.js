document.addEventListener('DOMContentLoaded', () => {
    // Navigation Toggle (legacy CSS-based nav)
    const hamburger = document.querySelector('.hamburger');
    const navLinks = document.querySelector('.nav-links');

    if (hamburger) {
        hamburger.addEventListener('click', () => {
            navLinks.classList.toggle('active');
            hamburger.classList.toggle('toggle');
        });
    }

    // Mobile Menu for Tailwind-based pages
    const mobileMenuButton = document.getElementById('mobile-menu-button');
    if (mobileMenuButton) {
        // Create mobile nav panel if it doesn't exist
        let mobileNav = document.getElementById('mobile-nav-panel');
        if (!mobileNav) {
            mobileNav = document.createElement('div');
            mobileNav.id = 'mobile-nav-panel';
            mobileNav.setAttribute('aria-hidden', 'true');
            mobileNav.style.cssText = [
                'display:none',
                'position:fixed',
                'top:8rem',
                'left:0',
                'right:0',
                'z-index:40',
                'background:#0a192f',
                'border-top:1px solid rgba(205,163,79,0.3)',
                'border-bottom:1px solid rgba(205,163,79,0.3)',
                'box-shadow:0 8px 32px rgba(0,0,0,0.5)'
            ].join(';');

            const navLinks = [
                { href: 'index.html', text: 'Home' },
                { href: 'about.html', text: 'About Us' },
                { href: 'expertise.html', text: 'Expertise' },
                { href: 'team.html', text: 'Team' },
                { href: 'updates.html', text: 'Landmark Cases' },
                { href: 'articles.html', text: 'Legal Articles' },
                { href: 'events.html', text: 'Events' },
                { href: 'legal-broadcasts.html', text: 'Legal Broadcasts' },
                { href: 'contact.html', text: 'Contact Us', highlight: true },
            ];

            const ul = document.createElement('ul');
            ul.style.cssText = 'list-style:none;margin:0;padding:1rem 2rem';
            navLinks.forEach(link => {
                const li = document.createElement('li');
                li.style.cssText = 'border-bottom:1px solid rgba(255,255,255,0.05)';
                const a = document.createElement('a');
                a.href = link.href;
                a.textContent = link.text;
                a.style.cssText = [
                    'display:block',
                    'padding:0.85rem 0',
                    'font-family:Lato,sans-serif',
                    'font-size:12px',
                    'font-weight:800',
                    'letter-spacing:0.15em',
                    'text-transform:uppercase',
                    'text-decoration:none',
                    link.highlight ? 'color:#CDA34F' : 'color:#ffffff',
                    'transition:color 0.2s'
                ].join(';');
                a.addEventListener('mouseover', () => { a.style.color = '#CDA34F'; });
                a.addEventListener('mouseout', () => { a.style.color = link.highlight ? '#CDA34F' : '#ffffff'; });
                a.addEventListener('click', closeMobileMenu);
                li.appendChild(a);
                ul.appendChild(li);
            });
            mobileNav.appendChild(ul);

            // Insert after header
            const header = document.querySelector('header');
            if (header && header.parentNode) {
                header.parentNode.insertBefore(mobileNav, header.nextSibling);
            }
        }

        function openMobileMenu() {
            mobileNav.style.display = 'block';
            mobileNav.setAttribute('aria-hidden', 'false');
            mobileMenuButton.setAttribute('aria-expanded', 'true');
            mobileMenuButton.setAttribute('aria-label', 'Close navigation menu');
        }

        function closeMobileMenu() {
            mobileNav.style.display = 'none';
            mobileNav.setAttribute('aria-hidden', 'true');
            mobileMenuButton.setAttribute('aria-expanded', 'false');
            mobileMenuButton.setAttribute('aria-label', 'Open navigation menu');
        }

        mobileMenuButton.addEventListener('click', (e) => {
            e.stopPropagation();
            const isExpanded = mobileMenuButton.getAttribute('aria-expanded') === 'true';
            if (isExpanded) {
                closeMobileMenu();
            } else {
                openMobileMenu();
            }
        });

        // Close when clicking outside
        document.addEventListener('click', (e) => {
            if (!mobileNav.contains(e.target) && !mobileMenuButton.contains(e.target)) {
                closeMobileMenu();
            }
        });

        // Close on Escape key
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape') {
                closeMobileMenu();
            }
        });
    }

    // Sticky Header
    const header = document.querySelector('header');
    if (header) {
        window.addEventListener('scroll', () => {
            if (window.scrollY > 50) {
                header.classList.add('scrolled');
            } else {
                header.classList.remove('scrolled');
            }
        });
    }

    // Scroll Animations
    const fadeElements = document.querySelectorAll('.fade-in');
    
    const appearOptions = {
        threshold: 0.2,
        rootMargin: "0px 0px -50px 0px"
    };

    const appearOnScroll = new IntersectionObserver(function(entries, appearOnScroll) {
        entries.forEach(entry => {
            if (!entry.isIntersecting) {
                return;
            } else {
                entry.target.classList.add('visible');
                appearOnScroll.unobserve(entry.target);
            }
        });
    }, appearOptions);

    fadeElements.forEach(element => {
        appearOnScroll.observe(element);
    });
});
