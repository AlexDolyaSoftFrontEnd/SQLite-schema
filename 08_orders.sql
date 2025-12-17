-- Таблица заказов
-- Хранит информацию о заказах пользователей

CREATE TABLE orders (
  -- Первичный ключ заказа
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Пользователь, оформивший заказ
  user_id INTEGER NOT NULL,

  -- Общая сумма заказа
  total_amount REAL NOT NULL,

  -- Статус заказа (new, paid, shipped и т.д.)
  status TEXT DEFAULT 'new',

  -- Дата создания заказа
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

  -- Связь с пользователями
  FOREIGN KEY (user_id) REFERENCES users(id)
);
