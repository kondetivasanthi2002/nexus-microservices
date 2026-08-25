-- Migration Schema Definition for catalog/catalogIndexing
CREATE TABLE tbl_catalog_catalogIndexing (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_catalog_catalogIndexing_status ON tbl_catalog_catalogIndexing(status);
CREATE INDEX idx_catalog_catalogIndexing_code ON tbl_catalog_catalogIndexing(code);
