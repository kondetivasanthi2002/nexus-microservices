-- Migration Schema Definition for catalog/productReview
CREATE TABLE tbl_catalog_productReview (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_catalog_productReview_status ON tbl_catalog_productReview(status);
CREATE INDEX idx_catalog_productReview_code ON tbl_catalog_productReview(code);
