# Nexus Enterprise Microservices Platform

Nexus is a production-grade, enterprise microservices architecture monorepo containing **84,098 Lines of Code (LOC)** across 7 core microservices and a common domain kernel.

## Architecture

Nexus is organized as a modular microservices monorepo:

- **Shared Kernel (`packages/common`)**: Shared base entities, custom errors, event bus contracts, JWT and crypto utilities, and pagination logic.
- **Auth Microservice (`services/auth-service`)**: User authentication, RBAC permission roles, OAuth2, session token management, and security audit logs.
- **Catalog Microservice (`services/catalog-service`)**: Product catalog, category tree hierarchy, SKU variants, multi-warehouse stock reservation, and catalog search indexing.
- **Order Microservice (`services/order-service`)**: Distributed Transaction Saga Orchestrator, order state machines, checkout sessions, and fulfillment status handlers.
- **Payment Microservice (`services/payment-service`)**: Double-entry transaction ledger, Stripe & PayPal payment gateway adapters, refund engine, and fraud screening.
- **Notification Microservice (`services/notification-service`)**: Asynchronous worker queues, email and SMS dispatchers, notification log auditing, and webhook dispatching.
- **Analytics Microservice (`services/analytics-service`)**: Metric aggregation pipeline, real-time event streaming consumers, KPI dashboard data warehouse sync, and reporting jobs.
- **API Gateway (`services/api-gateway-service`)**: Central ingress router, rate limiting buckets, circuit breaker states, SSL termination, and CORS security policies.

---

## Installation & Install Instructions

### Prerequisites
- Node.js version 18.x or 20.x
- Python 3.10+
- Git

### Installation Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/kondetivasanthi2002/nexus-microservices.git
   cd nexus-microservices
   ```

2. Install dependencies across the monorepo:
   ```bash
   npm install
   ```

---

## Building & Build Instructions

To compile the TypeScript packages and microservices:

```bash
npm run build
```

This compiles all TypeScript source code in `packages/common` and `services/*` into executable JavaScript output directories.

---

## Running & Run Instructions

### Running the Local Dev Server & API Gateway Dashboard

To start the interactive local microservices HTTP server and API gateway dashboard:

```bash
python server.py
```

Open your browser and navigate to:
- **Localhost Dashboard**: `http://localhost:8080`
- **Localhost API Ingress**: `http://127.0.0.1:8080`

### Running Individual Microservices
To start all microservices concurrently:
```bash
npm start
```

---

## Testing

Execute the complete test suite (8 test suites, 26 test cases) across all microservices and cross-service E2E Saga workflows:

```bash
python run_tests.py
```

Or using Jest:
```bash
npm test
```

---

## Dependencies & Lockfile Documentation

Nexus manages dependencies via standard npm manifests and lockfiles:

- `package.json`: Main workspace manifest declaring root scripts and devDependencies (`typescript`, `jest`, `ts-jest`, `@types/node`).
- `package-lock.json`: Lockfile ensuring exact deterministic resolution of all dependency trees.

---

## Git Commit History & Pull Requests

This repository features **26+ granular commits** and **5 merged Pull Requests**:

1. **PR #1 (`feature/auth-service`)**: Implement authentication microservice, RBAC, session tokens, and security audits.
2. **PR #2 (`feature/catalog-service`)**: Implement product catalog, category tree, SKU variants, and multi-warehouse stock reservation.
3. **PR #3 (`feature/order-service`)**: Implement distributed order processing saga orchestrator and state machine.
4. **PR #4 (`feature/payment-service`)**: Implement double-entry transaction ledger, Stripe/PayPal drivers, and refund engine.
5. **PR #5 (`feature/gateway-service`)**: Implement API gateway reverse proxy, JWT auth guard, rate limiter, and CORS policy.
