-- Migration Schema Definition for notification/emailTemplate
CREATE TABLE tbl_notification_emailTemplate (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_notification_emailTemplate_status ON tbl_notification_emailTemplate(status);
CREATE INDEX idx_notification_emailTemplate_code ON tbl_notification_emailTemplate(code);
