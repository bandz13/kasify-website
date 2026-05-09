# Kasify - Township Business Directory

A modern, mobile-first marketplace connecting customers with local township businesses in North West Province, South Africa.

![Kasify Preview](https://via.placeholder.com/800x400/10b981/ffffff?text=Kasify+Township+Business+Directory)

## 🌟 Features

- **Mobile-First Design**: Optimized for low-end Android phones common in townships
- **Local Focus**: Showcases authentic South African township businesses
- **Interactive Listings**: Business cards that feel like mini-websites
- **WhatsApp Integration**: Direct messaging for instant customer-seller connection
- **Category-Based Search**: Easy browsing by business type
- **Responsive Layout**: Works perfectly on all screen sizes

## 🏪 Business Categories

- 🛒 **Food & Groceries** - Spazas, butcheries, and local stores
- 💇 **Hair & Beauty** - Salons and grooming services
- 👕 **Clothing & Fashion** - Tailors and boutiques
- 🔧 **Services** - Plumbers, builders, and handymen
- 🏗️ **Building & Hardware** - Construction supplies and materials
- ⭐ **Other** - Additional local services and businesses

## 🎨 Design Philosophy

**Township Energy**: Vibrant greens, oranges, and yellows with professional dark text
**Authentic Local Feel**: Real township locations (Wolmaransstad, Mmabatho, Klerksdorp, Rustenburg, Brits)
**Interactive Experience**: Hover effects, animations, and engaging UI elements
**Fast & Accessible**: Single HTML file with CDN resources for quick loading

## 🚀 Live Demo

[View Live Demo](https://your-github-username.github.io/kasify-website/)

## 📱 Screenshots

### Homepage Hero
Beautiful gradient hero section with search functionality and category browsing.

### Business Listings
Interactive cards showcasing different business types with unique themed designs.

### Mobile Responsive
Optimized for mobile devices with horizontal scrolling business cards.

## 🛠️ Technologies Used

- **HTML5**: Semantic markup and structure
- **Tailwind CSS**: Utility-first CSS framework via CDN
- **Firebase**: Backend database for seller profiles and data
- **JavaScript (ES6+)**: Dynamic profile pages and form handling

## 🔥 Firebase Setup

Kasify uses Firebase Firestore as the backend database for seller profiles, products, reviews, and deals.

### 1. Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Create a new project called "kasify-website"
3. Enable Firestore Database
4. Set up Authentication (optional, for admin features)

### 2. Database Structure

#### Sellers Collection
```javascript
{
  id: "mpho-web-studio",
  businessName: "Mpho Web Studio",
  tagline: "Building digital dreams for township businesses",
  category: "Web & Tech",
  location: "Mahikeng",
  brandColour: "#3b82f6", // Blue theme
  coverPhoto: "https://example.com/cover.jpg",
  logo: "https://example.com/logo.jpg",
  about: "We create modern websites for local businesses...",
  hours: "Mon-Fri: 8AM-6PM\nSat: 9AM-2PM\nSun: Closed",
  isVerified: true,
  rating: 4.8
}
```

#### Products Collection
```javascript
{
  id: "website-basic",
  sellerId: "mpho-web-studio",
  name: "Basic Website Package",
  price: 1500,
  photo: "https://example.com/website.jpg",
  description: "5-page responsive website with contact form",
  whatsappLink: "https://wa.me/27821234567?text=Hi, interested in Basic Website Package"
}
```

#### Reviews Collection
```javascript
{
  id: "review-1",
  sellerId: "mpho-web-studio",
  reviewerName: "Thabo M.",
  rating: 5,
  comment: "Excellent work! My business website looks professional.",
  date: { seconds: 1640995200, nanoseconds: 0 }
}
```

#### Deals Collection
```javascript
{
  id: "deal-1",
  sellerId: "mpho-web-studio",
  title: "20% Off New Websites",
  description: "Get 20% discount on all new website packages this month!",
  discount: "20% OFF"
}
```

### 3. Deploy Security Rules

Upload the `firestore.rules` file to your Firebase project:

1. In Firebase Console, go to **Firestore Database** → **Rules**
2. Copy and paste the contents of `firestore.rules`
3. Click **Publish**

The rules allow:
- **Public Read Access**: Anyone can view seller profiles and data
- **Authenticated Writes**: Only logged-in users can add/edit data
- **Seller Profile Edits**: Sellers can only edit their own profiles

### 4. Update Firebase Config

In both `index.html` and `seller-profile.html`, replace the placeholder config:

```javascript
const firebaseConfig = {
  apiKey: "your-actual-api-key",
  authDomain: "kasify-website.firebaseapp.com",
  projectId: "kasify-website",
  storageBucket: "kasify-website.appspot.com",
  messagingSenderId: "123456789",
  appId: "your-actual-app-id"
};
```

### 4. Add Sample Data

Use Firebase Console or a script to add sample seller data matching the IDs used in the homepage links.

## 📊 Features

- **Seller Profiles**: Full mini-website experience for each business
- **Product Catalogs**: Showcase services with photos and pricing
- **Customer Reviews**: Build trust with verified reviews
- **Special Deals**: Highlight promotions and discounts
- **WhatsApp Integration**: Direct contact for orders and inquiries
- **Mobile Optimized**: Fast loading on township mobile networks
- **Google Fonts**: Inter font family for modern typography
- **Responsive Design**: Mobile-first approach with breakpoints
- **CSS Animations**: Subtle hover effects and transitions

## 📁 Project Structure

```
kasify-website/
├── index.html          # Main website file
├── README.md           # Project documentation
├── .gitignore         # Git ignore file
├── LICENSE            # MIT License
├── package.json       # Node.js configuration
├── CONTRIBUTING.md    # Contributor guidelines
├── setup-github.bat   # GitHub setup script
├── .github/
│   └── workflows/
│       └── deploy.yml  # GitHub Pages deployment
└── assets/            # Future assets folder
```

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/kasify-website.git
   cd kasify-website
   ```

2. **Open in browser**
   - Simply open `index.html` in any modern web browser
   - No build process required!

3. **Customize**
   - Edit business listings in the HTML
   - Modify colors and styling in the `<style>` section
   - Add your own businesses and categories

## 🎯 Business Listing Features

Each business listing includes:
- **Website-like Design**: Cards that feel like mini-business websites
- **Service Showcases**: Visual representation of offerings
- **Pricing Information**: Transparent local pricing
- **Location Details**: Specific township locations
- **Contact Integration**: WhatsApp messaging buttons
- **Social Proof**: Ratings and testimonials

## 🌍 South African Context

Built specifically for North West Province townships:
- **Local Currency**: All prices in South African Rand (R)
- **Township Locations**: Authentic place names and areas
- **Cultural Relevance**: Kasi cuisine, local business names
- **Community Focus**: Supporting local entrepreneurship

## 🤝 Contributing

We welcome contributions! Please feel free to:
- Add more business categories
- Improve mobile responsiveness
- Add new interactive features
- Translate to local languages
- Add more township locations

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- Built with ❤️ for North West Province township businesses
- Inspired by the vibrant entrepreneurial spirit of South African townships
- Dedicated to supporting local economies and small businesses

## 📞 Contact

For questions or business listings:
- Email: hello@kasify.co.za
- WhatsApp: Connect directly through business listings

---

**Kasify** - Supporting local, township businesses across North West Province. 🌟