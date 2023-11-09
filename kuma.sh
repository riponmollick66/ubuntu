# System update
#=======#=====#==
/usr/bin/apt update -y	;

# Install Required packages
#==========#============#====
/usr/bin/apt install -y docker.io	;
/usr/bin/apt install -y docker-compose	;

# Start services at boot
#==========#=========#====
/bin/systemctl enable docker	;
/bin/systemctl enable containerd ;

# Pull docker image
#=========#=======#==
docker run -d --restart=always -p 3001:3001 -v uptime-kuma:/app/data --name uptime-kuma louislam/uptime-kuma:1