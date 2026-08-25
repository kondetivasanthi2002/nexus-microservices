-- Migration Schema Definition for catalog/categoryTree
CREATE TABLE tbl_catalog_categoryTree (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_catalog_categoryTree_status ON tbl_catalog_categoryTree(status);
CREATE INDEX idx_catalog_categoryTree_code ON tbl_catalog_categoryTree(code);
