# Вказуємо базовий образ
FROM node:14

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо package.json і package-lock.json
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо вихідний код застосунку
COPY . .

# Вказуємо порт
EXPOSE 3000

# Визначаємо команду для запуску застосунку
CMD ["npm", "start"]
