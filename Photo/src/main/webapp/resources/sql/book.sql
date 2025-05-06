DROP TABLE book;

SHOW DATABASES;

use BookMarketDB;

CREATE TABLE IF NOT EXISTS book (
  id VARCHAR(10) NOT NULL,
  name VARCHAR(20),
  unitPrice INTEGER,
  description TEXT,
  publisher VARCHAR(20),
  category VARCHAR(20),
  fileName VARCHAR(20),
  PRIMARY KEY (b_id)
); 

SELECT * FROM book;