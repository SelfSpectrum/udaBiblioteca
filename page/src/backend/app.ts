import express from 'express';
import bcrypt from 'bcrypt';
import bodyParser from 'body-parser';
import session from 'express-session';
import MySQLStore from 'express-mysql-session';
import mysql from 'mysql2/promise';
import cors from 'cors';

const app = express();

// MySQL database connection
const db = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'udaBibRefs',
});

// MySQL session store setup
const sessionStore = new MySQLStore({}, db);

// Middleware
app.use(cors({
  origin: 'http://localhost:5173', // Allow frontend (on Vite) to access backend
  credentials: true, // Allow cookies
}));
app.use(bodyParser.json()); // Parse JSON requests
app.use(session({
  secret: 'your-secret-key', // Replace with a secure secret in production
  resave: false,
  saveUninitialized: false,
  store: sessionStore,
  cookie: {
    secure: false, // Set `true` if using HTTPS
    httpOnly: true,
    maxAge: 1000 * 60 * 60 * 24, // 1 day
  },
}));

// Routes
// Login route
app.post('/api/login', async (req, res) => {
  const { username, password } = req.body;

  try {
    // Fetch user from the database
    const [rows] = await db.query('SELECT * FROM Users WHERE username = ?', [username]);
    const user = rows[0];

    if (!user) {
      return res.status(401).json({ success: false, message: 'Invalid credentials.' });
    }

    // Compare provided password with the hashed password
    const isPasswordValid = await bcrypt.compare(password, user.HashedPassword);
    if (isPasswordValid) {
      req.session.userData = { username: user.Username, role: user.role };
      return res.status(200).json({ success: true, message: 'Login successful!' });
    }

    res.status(401).json({ success: false, message: 'Invalid credentials.' });
  } catch (error) {
    console.error('Login error:', error);
    res.status(500).json({ success: false, message: 'Internal server error.' });
  }
});

// Load session user data
app.get('/api/session', (req, res) => {
  if (req.session.userData) {
    return res.json({
      success: true,
      username: req.session.userData.username,
      role: req.session.userData.role,
    });
  }

  res.status(401).json({ success: false, message: 'Not logged in.' });
});

// Create a new user
app.post('/api/add_users', async (req, res) => {
  const { username, password, role } = req.body;

  if (!username || !password || role === undefined) {
    return res.status(400).json({ success: false, message: 'Username, password, and role are required.' });
  }

  try {
    // Check if username already exists
    const [existingUsers] = await db.query('SELECT * FROM Users WHERE username = ?', [username]);
    if (existingUsers.length > 0) {
      return res.status(400).json({ success: false, message: 'Username already exists.' });
    }

    // Hash the password
    const hashedPassword = await bcrypt.hash(password, 10);

    // Insert the new user
    await db.query('INSERT INTO Users (Username, HashedPassword, role) VALUES (?, ?, ?)', [
      username,
      hashedPassword,
      role,
    ]);

    res.status(201).json({ success: true, message: 'User created successfully!' });
  } catch (error) {
    console.error('Add user error:', error);
    res.status(500).json({ success: false, message: 'Internal server error.' });
  }
});

// Start the server
app.listen(3000, () => {
  console.log('Server running on port 3000');
});

