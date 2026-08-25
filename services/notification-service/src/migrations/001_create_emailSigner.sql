-- Migration Schema Definition for notification/emailSigner
CREATE TABLE tbl_notification_emailSigner (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_notification_emailSigner_status ON tbl_notification_emailSigner(status);
CREATE INDEX idx_notification_emailSigner_code ON tbl_notification_emailSigner(code);
