var express = require('express');
var app = express();
var session = require('express-session');
var conn = require('./dbConfig');
var path = require('path');
// var bcrypt = require('bcrypt');

app.set('view engine','ejs');
app.use('/public', express.static('public')) ;
app.use(express.urlencoded({extended: true}));

app.use(session({
  secret: 'square_gift_secret',
  resave: true,
  saveUninitialized: true
}));

//Routes
app.get('/', function(req, res) {
    // If they are already logged in, send them straight to the designer
    if (req.session.userEmail) {
        res.redirect('/designer');
    } else {
        res.render('login', { user: req.session.userEmail });
    }
});

app.get('/designer', function(req, res) {
    if (req.session.userEmail) {
        res.render('designer.ejs', { user: req.session.userEmail });
    } else {
        // If not logged in, kick them back to the login page (root)
        res.redirect('/');
    }
});

// About Us Route
app.get('/about', function(req, res) {
       res.render('about.ejs', { user: req.session.userEmail });
});

// GUEST ACCESS ROUTE
app.get('/guest-login', function(req, res) {
    req.session.userEmail = 'Guest';
    res.redirect('/designer'); // GO TO DESIGNER
});

app.get('/login', function(req, res) {
    res.render('login.ejs', { user: req.session.userEmail });
});
app.get('/register', function(req, res) {
  res.render('register.ejs', { user: req.session.userEmail });
});



// Registration Logic
app.post('/register-user', function(req, res) {
    var email = req.body.email;
    var mobile = req.body.mobile;
    var address = req.body.address;
    var password = req.body.password;
    
    var sql = "INSERT INTO users (email, mobile, address, password) VALUES (?, ?, ?, ?)";
    conn.query(sql, [email, mobile, address, password], function(err) {
        if (err) return res.send("Error: User already exists.");
        res.redirect('/login');
    });
});


// Login Logic
app.post('/login-user', function(req, res) {
    var email = req.body.email;
    var password = req.body.password;
    var sql = "SELECT * FROM users WHERE email = ? AND password = ?";
    conn.query(sql, [email, password], function(err, results) {
        if (err) throw err;
        if (results.length > 0) {
            req.session.userEmail = results[0].email;
            // AFTER SUCCESSFUL LOGIN, GO TO DESIGNER
            res.redirect('/designer'); 
        } else {
            res.send("Invalid credentials.");
        }
    });
});

// Save Order Logic (11 Fields)
app.post('/save-order', function(req, res) {
    var email = req.session.userEmail || 'Guest';
    var d = req.body;
    var sql = `INSERT INTO orders 
        (user_email, recipient_name, occasion, size, location, event_date, 
         extra_prayer, font_style, cross_type, design_colour, ribbon_type, delivery_method) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

    conn.query(sql, [email, d.recipientName, d.occasion, d.size, d.location, d.date, 
                     d.prayer, d.font, d.cross, d.colour, d.ribbon, d.delivery], function(err) {
        if (err) throw err;
        res.render('success', { user: req.session.userEmail });
    });
});

// Admin Route: List Orders
app.get('/list-orders', function(req, res) {
    var sql = "SELECT * FROM orders ORDER BY created_at DESC";
    conn.query(sql, function(err, results) {
        if (err) throw err;
        res.render('listOrders', { orders: results, user: req.session.userEmail });
    });
});

app.get('/logout', (req, res) => {
    req.session.destroy();
    res.redirect('/')
    });

app.listen(3001);
console.log('Node app is running on port 3001');