-- Таблица товаров
-- Каталог товаров для интернет-магазина или склада

CREATE TABLE products (
  -- Первичный ключ товара
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Название товара
  title TEXT NOT NULL,

  -- Цена товара
  price REAL NOT NULL,

  -- Валюта цены
  currency TEXT DEFAULT 'USD',

  -- Остаток товара на складе
  stock INTEGER DEFAULT 0,

  -- Флаг активности товара
  is_active INTEGER DEFAULT 1,

  -- Дата создания товара
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
