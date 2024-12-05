import express from 'express';
import bcrypt from 'bcrypt';
import bodyParser from 'body-parser';
import session from 'express-session';
import MySQLStore from 'express-mysql-session';
import mysql from 'mysql2/promise';
import bodyParser from 'body-parser';

const app = express();
app.use(bodyParser.json());

// MySQL database connection
const db = await mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'udaBibRefs',
});

// MySQL session store setup
const sessionStore = new MySQLStore({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'udaBibRefs',
});

app.use(session({
	secret: 'a02110c81f5675db916a23caf03866d12f6e3c9b9b55917648e0c1b9012213e43bb4440d045338e5be96ff529ae9ec637825e22c5e1808ecce95a18abdfccba6',
	resave: false,
	saveUninitialized: false,
	store: sessionStore,
	cookie: { secure: false, httpOnly: true, maxAge: 60000 }, // Adjust secure based on your environment
}));

app.use(bodyParser.json());

// Login route
app.post('/api/login', async (req, res) => {
	const { username, password } = req.body;

	// Validate credentials
	const user = await validateUser(username, password);
	if (user) {
		req.session.userId = user.id; // Store user info in the session
		res.json({ success: true, message: 'Login successful!' });
	} else {
		res.status(401).json({ success: false, message: 'Invalid credentials.' });
	}
});
// Create a new user
app.post('/api/users', async (req, res) => {
  const { username, password, role } = req.body;

  if (!username || !password || !role) {
    return res.status(400).json({ success: false, message: 'Username, password and role are required.' });
  }

  try {
    // Check if username already exists
    const [existingUsers] = await db.query('SELECT * FROM users WHERE Username = ?', [username]);
    if ((existingUsers as any[]).length > 0) {
      return res.status(400).json({ success: false, message: 'Username already exists.' });
    }

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10);

    // Insert user into database
    await db.query('INSERT INTO users (Username, HashedPassword, role) VALUES (?, ?, ?)', [username, hashedPassword, role]);
    res.status(201).json({ success: true, message: 'User created successfully!' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, message: 'Internal server error.' });
  }
});

app.listen(3000, () => console.log('Server running on port 3000'));

