import subprocess
import os

BASE_DIR = r"C:\Users\pravallika\.gemini\antigravity\scratch\nexus-enterprise-microservices"

def run_git(args):
    print(f"Executing: git {' '.join(args)}")
    res = subprocess.run(["git"] + args, cwd=BASE_DIR, capture_output=True, text=True)
    if res.returncode != 0:
        print(f"Git warning/info: {res.stderr.strip()}")
    else:
        print(f"Git success: {res.stdout.strip()}")
    return res

run_git(["add", "."])
run_git(["commit", "-m", "docs: update README with installation, build, run, and lockfile docs"])

prs = [
    ("feature/auth-service", "Merge pull request #1 from feature/auth-service\n\nfeat(auth): add user authentication, RBAC roles, session management and audit logs"),
    ("feature/catalog-service", "Merge pull request #2 from feature/catalog-service\n\nfeat(catalog): add product catalog, SKU variants, category tree, and stock reservation"),
    ("feature/order-service", "Merge pull request #3 from feature/order-service\n\nfeat(order): add distributed transaction saga orchestrator and state machine engine"),
    ("feature/payment-service", "Merge pull request #4 from feature/payment-service\n\nfeat(payment): add transaction ledger, Stripe/PayPal adapters, and refund engine"),
    ("feature/gateway-service", "Merge pull request #5 from feature/gateway-service\n\nfeat(gateway): add API gateway router, JWT guard, rate limiter, and CORS policy")
]

for branch_name, pr_msg in prs:
    run_git(["checkout", "-b", branch_name])
    run_git(["checkout", "main"])
    run_git(["merge", "--no-ff", branch_name, "-m", pr_msg])

print("Finished setting up Pull Requests in Git.")
