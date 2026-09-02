<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Shopping made friendly</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@600;700;800&family=Nunito:wght@400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #FFF8F0;           /* warm milk */
            --ink: #45322E;          /* soft cocoa — no harsh black anywhere */
            --accent: #E85D75;       /* friendly raspberry */
            --honey: #FFB84D;        /* honey highlight */
            --mint: #57C7A1;         /* fresh mint for success/positive */
            --card: #FFFFFF;
            --surface: #FFEEDB;      /* peach surface */
            --muted: #9A8079;
            --radius: 22px;
            --shadow: 0 10px 30px rgba(232, 93, 117, 0.10);
            --container: 1180px;
        }

        * { box-sizing: border-box }
        html, body { height: 100% }

        body {
            margin: 0;
            font-family: 'Nunito', system-ui, -apple-system, 'Segoe UI', Roboto, Arial, sans-serif;
            color: var(--ink);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            line-height: 1.55;
        }

        h1, h2, h3, h4, h5 {
            font-family: 'Baloo 2', 'Nunito', sans-serif;
            line-height: 1.2;
        }

        a { color: inherit; text-decoration: none }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        :focus-visible {
            outline: 3px solid var(--honey);
            outline-offset: 2px;
            border-radius: 8px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 40;
            background: rgba(255, 248, 240, 0.92);
            backdrop-filter: blur(8px);
            border-bottom: 2px dashed rgba(232, 93, 117, 0.18);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 14px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Baloo 2', sans-serif;
            font-weight: 800;
            font-size: 24px;
        }

        .brand .bubble {
            width: 40px;
            height: 40px;
            border-radius: 14px;
            background: linear-gradient(135deg, var(--accent), var(--honey));
            display: grid;
            place-items: center;
            color: #fff;
            font-size: 18px;
            transform: rotate(-6deg);
        }

        .brand .accent { color: var(--accent) }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            margin: 0;
            padding: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 9px 16px;
            border-radius: 999px;
            font-weight: 700;
            font-size: 15px;
            transition: background .15s ease, color .15s ease;
        }

        nav.main-nav li a:hover {
            background: var(--surface);
            color: var(--accent);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: #fff;
            border: 2px solid var(--surface);
            padding: 9px 16px;
            border-radius: 999px;
            min-width: 240px;
            transition: border-color .15s ease;
        }

        .search:focus-within { border-color: var(--honey); }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            font-family: inherit;
            color: var(--ink);
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--ink);
            font-size: 17px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
            transition: background .15s ease, color .15s ease;
        }

        .icon-btn:hover { background: var(--surface); color: var(--accent); }

        .header-actions { display: flex; align-items: center; gap: 6px; }

        .cart {
            position: relative;
            display: inline-grid;
            place-items: center;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--surface);
            font-size: 17px;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -5px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 800;
            width: 21px;
            height: 21px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
            border: 2px solid var(--bg);
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: var(--surface);
            width: 42px;
            height: 42px;
            border-radius: 14px;
            font-size: 18px;
            cursor: pointer;
            color: var(--ink);
        }

        /* Hero */
        .hero {
            padding: 64px 20px 72px;
            text-align: center;
            background:
                radial-gradient(circle at 12% 20%, rgba(255, 184, 77, 0.25), transparent 34%),
                radial-gradient(circle at 88% 15%, rgba(232, 93, 117, 0.18), transparent 32%),
                radial-gradient(circle at 80% 85%, rgba(87, 199, 161, 0.16), transparent 30%),
                var(--bg);
        }

        .hero .wave-hand { font-size: 40px; display: inline-block; }

        .hero h1 {
            font-size: 46px;
            font-weight: 800;
            margin: 10px 0 14px;
        }

        .hero h1 .squiggle {
            color: var(--accent);
            position: relative;
            white-space: nowrap;
        }

        .hero h1 .squiggle::after {
            content: '';
            position: absolute;
            left: 0; right: 0; bottom: -4px;
            height: 8px;
            background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='8' viewBox='0 0 80 8'%3E%3Cpath d='M0 5 Q10 0 20 5 T40 5 T60 5 T80 5' fill='none' stroke='%23FFB84D' stroke-width='3' stroke-linecap='round'/%3E%3C/svg%3E") repeat-x;
        }

        .hero p {
            margin: 0 auto 26px;
            max-width: 620px;
            color: var(--muted);
            font-size: 17px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 13px 26px;
            border-radius: 999px;
            font-weight: 800;
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            cursor: pointer;
            border: 0;
            transition: transform .12s ease, box-shadow .12s ease;
        }

        .btn:hover { transform: translateY(-2px); }
        .btn:active { transform: translateY(0) scale(.98); }

        .btn-primary {
            background: var(--accent);
            color: #fff;
            box-shadow: 0 8px 20px rgba(232, 93, 117, 0.35);
        }

        .btn-ghost {
            background: #fff;
            border: 2px solid var(--surface);
            color: var(--ink);
        }

        .btn-ghost:hover { border-color: var(--honey); }

        /* Sections */
        .section { padding: 52px 0; }

        .section .title { text-align: center; margin-bottom: 30px; }
        .section .title h2 { font-size: 32px; margin: 0 0 8px; }
        .section .title p { margin: 0; }

        .grid { display: grid; gap: 20px; }

        /* Categories */
        .categories { grid-template-columns: repeat(6, 1fr); }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 22px 14px;
            text-align: center;
            cursor: pointer;
            border: 2px solid transparent;
            box-shadow: var(--shadow);
            transition: transform .18s ease, border-color .18s ease;
        }

        .cat-card:hover {
            transform: translateY(-6px) rotate(-1deg);
            border-color: var(--honey);
        }

        .cat-card .icon {
            width: 58px;
            height: 58px;
            margin: 0 auto 10px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 22px;
            color: var(--accent);
            background: var(--surface);
        }

        .cat-card:nth-child(even) .icon { background: #E7F7F0; color: var(--mint); }

        .cat-card h4 { margin: 0; font-size: 16px; }

        /* Products */
        .products { grid-template-columns: repeat(4, 1fr); }

        .product {
            position: relative;
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow);
            transition: transform .18s ease;
        }

        .product:hover { transform: translateY(-5px); }

        .product img {
            width: 100%;
            height: 190px;
            object-fit: cover;
            display: block;
        }

        .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 6px 12px;
            border-radius: 999px;
            font-weight: 800;
            font-size: 12px;
            color: #fff;
        }

        .badge.sale { background: var(--accent); }
        .badge.new { background: var(--mint); }

        .product-body {
            padding: 14px 16px 6px;
            display: flex;
            flex-direction: column;
            gap: 6px;
            flex: 1;
        }

        .product h5 { margin: 0; font-size: 16px; }

        .product .cat-tag {
            color: var(--muted);
            font-size: 13px;
            text-transform: capitalize;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 8px;
            margin-top: 4px;
        }

        .price { font-weight: 800; font-size: 17px; }
        .old-price { color: var(--muted); text-decoration: line-through; font-size: 13px; }
        .rating { color: var(--honey); font-size: 13px; font-weight: 700; }
        .rating .count { color: var(--muted); font-weight: 600; }

        .product-footer { padding: 12px 16px 16px; display: flex; gap: 10px; }

        .add-btn {
            flex: 1;
            background: var(--surface);
            color: var(--ink);
            border: 0;
            padding: 11px;
            border-radius: 999px;
            cursor: pointer;
            font-weight: 800;
            font-family: inherit;
            font-size: 14px;
            transition: background .15s ease, color .15s ease;
        }

        .add-btn:hover { background: var(--accent); color: #fff; }
        .add-btn.added { background: var(--mint); color: #fff; }

        .wish-btn {
            background: #fff;
            border: 2px solid var(--surface);
            width: 42px;
            border-radius: 50%;
            cursor: pointer;
            color: var(--accent);
            transition: border-color .15s ease, transform .15s ease;
        }

        .wish-btn:hover { border-color: var(--accent); transform: scale(1.08); }

        /* Deal */
        .deal {
            display: flex;
            gap: 0;
            background: linear-gradient(120deg, #FFEEDB, #FFE3E9);
            border-radius: 28px;
            overflow: hidden;
            align-items: stretch;
        }

        .deal img {
            width: 46%;
            object-fit: cover;
            display: block;
        }

        .deal .content { padding: 34px; flex: 1; }
        .deal .content h3 { font-size: 28px; margin: 0 0 6px; }

        .timer { display: flex; gap: 10px; margin: 20px 0; }

        .time-box {
            background: #fff;
            color: var(--ink);
            padding: 12px 14px;
            border-radius: 18px;
            min-width: 74px;
            text-align: center;
            box-shadow: var(--shadow);
        }

        .time-box > div:first-child {
            font-family: 'Baloo 2', sans-serif;
            font-weight: 800;
            font-size: 22px;
            color: var(--accent);
        }

        .time-box .label { font-size: 12px; color: var(--muted); }

        .deal .price { font-size: 30px; color: var(--accent); }

        .deal-discount {
            background: var(--honey);
            color: var(--ink);
            padding: 7px 14px;
            border-radius: 999px;
            font-weight: 800;
        }

        .stock-note { margin-top: 12px; font-weight: 700; }
        .stock-note strong { color: var(--accent); }

        /* Testimonials */
        .testimonials {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding: 8px 4px 16px;
        }

        .testimonial {
            min-width: 320px;
            background: #fff;
            padding: 22px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            border-top: 5px solid var(--honey);
        }

        .testimonial:nth-child(even) { border-top-color: var(--mint); }
        .testimonial .rating { margin-bottom: 8px; }
        .testimonial p { margin: 0 0 14px; }

        .testimonial .person { display: flex; align-items: center; gap: 10px; }
        .testimonial .person img {
            width: 44px; height: 44px; border-radius: 50%; object-fit: cover;
            border: 3px solid var(--surface);
        }
        .testimonial .person .name { font-weight: 800; }
        .testimonial .person .role { color: var(--muted); font-size: 13px; }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, var(--accent), #F2836F);
            color: white;
            border-radius: 28px;
            padding: 40px 28px;
            text-align: center;
        }

        .newsletter h3 { font-size: 26px; margin: 0 0 6px; }
        .newsletter p { margin: 0 0 20px; opacity: .95; }

        .newsletter input {
            padding: 13px 18px;
            border-radius: 999px;
            border: 0;
            width: 320px;
            max-width: 100%;
            font-family: inherit;
            font-size: 14px;
            outline: none;
        }

        .newsletter .btn-primary {
            background: var(--honey);
            color: var(--ink);
            box-shadow: none;
        }

        /* Footer */
        footer {
            margin-top: 24px;
            padding: 40px 0 28px;
            background: var(--surface);
            border-top-left-radius: 40px;
            border-top-right-radius: 40px;
            color: var(--muted);
            font-size: 14px;
        }

        footer .foot-brand { font-family: 'Baloo 2', sans-serif; font-weight: 800; font-size: 20px; color: var(--ink); }
        footer .col-title { font-weight: 800; margin-bottom: 8px; color: var(--ink); }
        footer .icon-btn { background: #fff; }

        /* Responsive */
        @media (max-width:1200px) {
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width:900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .search { min-width: 150px; }
            .hero h1 { font-size: 34px; }
        }

        @media (max-width:600px) {
            .hero h1 { font-size: 28px; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 220px; }
            .timer { flex-wrap: wrap; }
        }

        @media (prefers-reduced-motion: reduce) {
            * { transition: none !important; }
        }

        .muted { color: var(--muted); }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:14px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
                <a class="brand" href="#">
                    <span class="bubble"><em class="fas fa-bag-shopping"></em></span>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#" id="catMenuBtn">Categories</a></li>
                    <li><a href="#">Trending</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#about">About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:12px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="What are you looking for?" aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search" style="width:32px;height:32px;"><em class="fas fa-search"></em></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <em class="fas fa-shopping-cart"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:2px dashed rgba(232,93,117,0.18);">
            <div class="container" style="padding:14px 20px;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:10px;font-weight:700;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero">
            <div class="container">
                <span class="wave-hand" aria-hidden="true">👋</span>
                <h1>Hi there! Find something<br>you'll <span class="squiggle">love</span> today</h1>
                <p>Fresh picks in fashion, tech and everyday goodies — hand-curated for you, with free shipping on selected items.</p>
                <div style="display:flex;gap:12px;justify-content:center;flex-wrap:wrap;">
                    <button class="btn btn-primary" id="shopNow">Start shopping <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">See today's deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2>Shop by category</h2>
                <p class="muted">Tap a category to explore what's inside.</p>
            </div>
            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending right now</h2>
                <p class="muted">Popular picks other shoppers are loving.</p>
            </div>
            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Today's flash sale</h2>
                <p class="muted">A little treat, for a little while.</p>
            </div>

            <div class="deal">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook Air M2 on a desk">
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted" style="margin:0;">Thin, light and powerful — now with M2 performance.</p>

                    <div class="timer">
                        <div class="time-box"><div id="dealDays">0</div><div class="label">Days</div></div>
                        <div class="time-box"><div id="dealHours">00</div><div class="label">Hours</div></div>
                        <div class="time-box"><div id="dealMinutes">00</div><div class="label">Minutes</div></div>
                        <div class="time-box"><div id="dealSeconds">00</div><div class="label">Seconds</div></div>
                    </div>

                    <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
                        <div class="price">$999 <span class="old-price" style="font-size:16px">$1,199</span></div>
                        <div class="deal-discount">Save 17%</div>
                    </div>

                    <p class="stock-note">Only <strong>12</strong> left at this price!</p>
                    <div style="margin-top:14px;">
                        <button class="btn btn-primary" id="buyDeal">Grab this deal</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>Happy shoppers</h2>
                <p class="muted">Real reviews from verified buyers.</p>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div class="person">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava Martin">
                        <div>
                            <div class="name">Ava Martin</div>
                            <div class="role">Verified buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection and the checkout was smooth. Will shop again."</p>
                    <div class="person">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael Lee">
                        <div>
                            <div class="name">Michael Lee</div>
                            <div class="role">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Let's keep in touch</h3>
                <p>Get first dibs on new arrivals and member-only deals.</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:10px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="you@example.com" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Join the list</button>
                </form>
                <div id="newsletterMsg" style="margin-top:12px;font-size:14px;font-weight:700;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div class="foot-brand">NexusShop</div>
                <p style="margin-top:8px">A friendly little shop for the things you use every day.</p>
                <div style="margin-top:14px;display:flex;gap:10px">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex;gap:44px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div class="col-title">Company</div>
                    <div style="line-height:2">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div class="col-title">Support</div>
                    <div style="line-height:2">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:26px;font-size:13px">Made with <span style="color:var(--accent)">♥</span> · © <span id="year"></span> NexusShop</div>
    </footer>

    <script>
        // --- Sample data ---
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
        ];

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.setAttribute('role', 'button');
                el.setAttribute('tabindex', '0');
                el.innerHTML = `
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <h4>${cat.name}</h4>
                `;
                const go = () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({ top: document.getElementById('prod-title').offsetTop - 70, behavior: 'smooth' });
                };
                el.addEventListener('click', go);
                el.addEventListener('keydown', e => { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); go(); } });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML = '<p class="muted" style="grid-column:1/-1;text-align:center;padding:30px 0;">Nothing matched that search — try another word, or browse the categories above.</p>';
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<span class="badge ${p.badge.startsWith('-') ? 'sale' : 'new'}">${p.badge}</span>` : ''}
                    <img src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="cat-tag">${p.category}</div>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">$${p.oldPrice.toLocaleString()}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span class="count">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add to cart</button>
                        <button class="wish-btn" aria-label="Add ${escapeHtml(p.title)} to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', () => addToCart(Number(btn.dataset.id)));
            });
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            }[s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added! 🎉';
                btn.classList.add('added');
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.classList.remove('added');
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() { cartCountEl.textContent = cartCount; }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            renderProducts(PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)
            ));
        }

        // --- Search ---
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

        // --- Mobile menu ---
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = (mobileMenu.style.display === 'none' || !mobileMenu.style.display) ? 'block' : 'none';
        });

        // --- Categories dropdown (demo) ---
        const catMenuBtn = document.getElementById('catMenuBtn');
        catMenuBtn && catMenuBtn.addEventListener('click', e => {
            e.preventDefault();
            document.getElementById('cat-title').scrollIntoView({ behavior: 'smooth' });
        });

        // --- Newsletter ---
        document.getElementById('newsletterForm').addEventListener('submit', e => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.style.color = '#FFE3A3';
                msg.textContent = 'That email doesn\u2019t look right — mind checking it?';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#FFF1C9';
            msg.textContent = 'You\u2019re in! Welcome to the list 🎉';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // --- Deal countdown ---
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        // --- UI bindings ---
        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 70, behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            alert('Deal added to your cart 🎉');
        });

        // --- Init ---
        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>
</html>
