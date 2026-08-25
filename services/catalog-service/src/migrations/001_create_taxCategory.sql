-- Migration Schema Definition for catalog/taxCategory
CREATE TABLE tbl_catalog_taxCategory (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_catalog_taxCategory_status ON tbl_catalog_taxCategory(status);
CREATE INDEX idx_catalog_taxCategory_code ON tbl_catalog_taxCategory(code);
