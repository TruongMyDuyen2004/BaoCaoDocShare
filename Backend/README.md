# 👨‍💻 LIỄU KIỆN AN - BACKEND DEVELOPER

## 🎯 NHIỆM VỤ CHÍNH
- Phát triển Backend API với Node.js/Express
- Thiết kế và quản lý Database MongoDB
- Xây dựng Authentication & Authorization system
- Tạo RESTful APIs cho tất cả chức năng
- Review code và merge Pull Requests

## 🛠️ CÔNG NGHỆ SỬ DỤNG
- **Runtime**: Node.js 18+
- **Framework**: Express.js
- **Database**: MongoDB với Mongoose ODM
- **Authentication**: JWT + bcryptjs
- **File Upload**: Multer
- **Validation**: express-validator
- **Security**: Helmet, CORS, Rate limiting

## 📋 DANH SÁCH CÔNG VIỆC

### Phase 1: Project Setup (Tuần 1)
- [ ] Tạo GitHub repository
- [ ] Setup backend project structure
- [ ] Cấu hình MongoDB connection
- [ ] Tạo basic Express server
- [ ] Setup environment variables

### Phase 2: Authentication System (Tuần 2)
- [ ] User model với Mongoose
- [ ] Registration API endpoint
- [ ] Login API với JWT
- [ ] Password hashing với bcrypt
- [ ] Auth middleware cho protected routes

### Phase 3: Document Management (Tuần 3-4)
- [ ] Document model design
- [ ] File upload với Multer
- [ ] CRUD operations cho documents
- [ ] File validation và security
- [ ] Search và filter functionality

### Phase 4: Advanced Features (Tuần 5)
- [ ] Bookmark system
- [ ] User activity tracking
- [ ] Document sharing permissions
- [ ] Analytics và statistics
- [ ] API documentation với Swagger

## 📁 CẤU TRÚC THU MỤC
```
backend/
├── config/
│   ├── database.js
│   ├── jwt.js
│   └── swagger.js
├── controllers/
│   ├── authController.js
│   ├── documentController.js
│   └── userController.js
├── middleware/
│   ├── auth.js
│   ├── upload.js
│   └── validation.js
├── models/
│   ├── User.js
│   ├── Document.js
│   └── Bookmark.js
├── routes/
│   ├── auth.js
│   ├── documents.js
│   └── users.js
├── utils/
│   ├── fileUtils.js
│   └── logger.js
├── scripts/
│   └── seedDatabase.js
├── uploads/
├── .env.example
├── package.json
└── server.js
```

## 🚀 COMMANDS
```bash
# Setup
cd LieuKienAn-Backend
npm install
cp .env.example .env
npm run seed
npm run dev

# Testing
npm test
node test-api.js
```

## 🔗 API ENDPOINTS
- POST /api/auth/register
- POST /api/auth/login
- GET /api/documents
- POST /api/documents/upload
- GET /api/documents/:id
- PUT /api/documents/:id
- DELETE /api/documents/:id
- POST /api/bookmarks
- GET /api/bookmarks
