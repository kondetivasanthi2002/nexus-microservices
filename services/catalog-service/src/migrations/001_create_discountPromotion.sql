-- Migration Schema Definition for catalog/discountPromotion
CREATE TABLE tbl_catalog_discountPromotion (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_catalog_discountPromotion_status ON tbl_catalog_discountPromotion(status);
CREATE INDEX idx_catalog_discountPromotion_code ON tbl_catalog_discountPromotion(code);
