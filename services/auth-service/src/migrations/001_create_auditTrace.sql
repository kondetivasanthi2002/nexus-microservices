-- Migration Schema Definition for auth/auditTrace
CREATE TABLE tbl_auth_auditTrace (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_auth_auditTrace_status ON tbl_auth_auditTrace(status);
CREATE INDEX idx_auth_auditTrace_code ON tbl_auth_auditTrace(code);
