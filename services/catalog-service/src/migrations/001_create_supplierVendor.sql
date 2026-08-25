-- Migration Schema Definition for catalog/supplierVendor
CREATE TABLE tbl_catalog_supplierVendor (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_catalog_supplierVendor_status ON tbl_catalog_supplierVendor(status);
CREATE INDEX idx_catalog_supplierVendor_code ON tbl_catalog_supplierVendor(code);
