# LinkWizard Backend

LinkWizard is a backend service for managing and organizing links with user authentication. This repository contains the dockerized version of the LinkWizard backend application.

## Features

- User Authentication (Register/Login)
- Link Management (Create, Read, Update, Delete)
- Secure password handling with bcrypt
- JWT-based authentication
- MongoDB integration
- Docker support for containerization
- CORS enabled for cross-origin requests

## Tech Stack

- Node.js
- Express.js
- MongoDB (with Mongoose ODM)
- Docker
- JSON Web Tokens (JWT)
- bcrypt for password hashing

## Prerequisites

- Node.js (v14 or higher)
- Docker
- MongoDB
- npm or yarn

## Getting Started

### Running with Docker

1. Clone the repository:
   ```bash
   git clone https://github.com/Dadiya-Harsh-wappnet/LinkWizard-Backend-Dockerization.git
   cd LinkWizard-Backend-Dockerization
   ```

2. Build the Docker image:
   ```bash
   docker build -t linkwizard-backend .
   ```

3. Run the container:
   ```bash
   docker run -p 3000:3000 linkwizard-backend
   ```

### Running Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/Dadiya-Harsh-wappnet/LinkWizard-Backend-Dockerization.git
   cd LinkWizard-Backend-Dockerization
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Create a `.env` file in the root directory with the following variables:
   ```
   PORT=3000
   MONGODB_URI=your_mongodb_connection_string
   CORS_ORIGIN=http://localhost:3000
   JWT_SECRET=your_jwt_secret
   ```

4. Start the development server:
   ```bash
   npm run dev
   ```

## API Endpoints

### User Routes
- `POST /api/v1/user/register` - Register a new user
- `POST /api/v1/user/login` - Login user

### Link Routes
- `GET /api/v1/link` - Get all links
- `POST /api/v1/link` - Create a new link
- `PUT /api/v1/link/:id` - Update a link
- `DELETE /api/v1/link/:id` - Delete a link

## Project Structure

```
.
├── Dockerfile
├── index.js
├── package.json
├── README.md
├── vercel.json
├── public/
└── src/
    ├── app.js
    ├── constant.js
    ├── controllers/
    │   ├── link.controller.js
    │   └── user.controller.js
    ├── db/
    │   └── index.js
    ├── middlewares/
    │   └── auth.middleware.js
    ├── models/
    │   ├── link.model.js
    │   └── user.model.js
    ├── routes/
    │   ├── link.routes.js
    │   └── user.routes.js
    └── utils/
        └── asyncHandler.js
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the ISC License.