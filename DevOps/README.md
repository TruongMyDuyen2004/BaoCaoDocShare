# 🔧 TRƯƠNG HOÀNG GIANG - DEVOPS ENGINEER

## 🎯 NHIỆM VỤ CHÍNH
- Thiết lập Docker containers cho development/production
- Cấu hình Nginx reverse proxy
- Viết automation scripts
- Database initialization và seeding
- Documentation và testing

## 🛠️ CÔNG NGHỆ SỬ DỤNG
- **Containerization**: Docker & Docker Compose
- **Web Server**: Nginx
- **Database**: MongoDB với initialization scripts
- **Scripting**: Bash scripts
- **Monitoring**: Health checks và logging

## 📋 DANH SÁCH CÔNG VIỆC

### Phase 1: Docker Setup (Tuần 6)
- [ ] Backend Dockerfile (production + development)
- [ ] Frontend Dockerfile với multi-stage build
- [ ] Docker Compose cho development
- [ ] Docker Compose cho production
- [ ] Volume management cho data persistence

### Phase 2: Nginx Configuration (Tuần 6-7)
- [ ] Reverse proxy configuration
- [ ] SSL termination setup
- [ ] Load balancing rules
- [ ] Rate limiting
- [ ] Static file serving

### Phase 3: Automation Scripts (Tuần 7)
- [ ] Backend startup script
- [ ] Frontend startup script
- [ ] Database seeding script
- [ ] MongoDB initialization script
- [ ] Health check scripts

### Phase 4: Documentation & Testing (Tuần 8)
- [ ] Docker deployment guide
- [ ] API integration documentation
- [ ] Environment setup instructions
- [ ] Troubleshooting guide
- [ ] Performance monitoring setup

## 📁 CẤU TRÚC THU MỤC
```
TruongHoangGiang-DevOps/
├── docker/
│   ├── backend/
│   │   ├── Dockerfile
│   │   └── Dockerfile.dev
│   ├── frontend/
│   │   ├── Dockerfile
│   │   └── Dockerfile.dev
│   ├── docker-compose.yml
│   └── docker-compose.dev.yml
├── nginx/
│   ├── nginx.conf
│   ├── ssl/
│   └── sites-available/
├── scripts/
│   ├── start-backend.sh
│   ├── start-frontend.sh
│   ├── init-mongo.js
│   ├── seedDatabase.js
│   └── health-check.sh
├── docs/
│   ├── DOCKER_README.md
│   ├── API_INTEGRATION_GUIDE.md
│   └── DEPLOYMENT_GUIDE.md
└── monitoring/
    ├── docker-compose.monitoring.yml
    └── prometheus.yml
```

## 🚀 COMMANDS
```bash
# Development
cd TruongHoangGiang-DevOps
docker-compose -f docker/docker-compose.dev.yml up -d
docker-compose -f docker/docker-compose.dev.yml logs -f

# Production
docker-compose -f docker/docker-compose.yml up -d
docker-compose -f docker/docker-compose.yml ps

# Scripts
./scripts/start-backend.sh
./scripts/start-frontend.sh
./scripts/health-check.sh
```

## 🐳 DOCKER SERVICES
- **Frontend**: Next.js app (port 3000)
- **Backend**: Express API (port 5000)
- **Database**: MongoDB (port 27017)
- **Proxy**: Nginx (ports 80, 443)
