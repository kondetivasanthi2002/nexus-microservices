-- Migration Schema Definition for notification/pushNotificationQueue
CREATE TABLE tbl_notification_pushNotificationQueue (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_notification_pushNotificationQueue_status ON tbl_notification_pushNotificationQueue(status);
CREATE INDEX idx_notification_pushNotificationQueue_code ON tbl_notification_pushNotificationQueue(code);
