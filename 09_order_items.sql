-- Таблица позиций заказа
-- Нормализует связь заказов и товаров

CREATE TABLE order_items (
  -- Первичный ключ позиции заказа
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Идентификатор заказа
  order_id INTEGER NOT NULL,

  -- Идентификатор товара
  product_id INTEGER NOT NULL,

  -- Количество товара
  quantity INTEGER NOT NULL,

  -- Цена товара на момент покупки
  price REAL NOT NULL,

  -- Удаление позиций при удалении заказа
  FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,

  -- Связь с таблицей товаров
  FOREIGN KEY (product_id) REFERENCES products(id)
);
