import { UserAccountServiceHandler } from '../../services/auth-service/src/modules/userAccount';
import { ProductMasterServiceHandler } from '../../services/catalog-service/src/modules/productMaster';
import { OrderHeaderServiceHandler } from '../../services/order-service/src/modules/orderHeader';
import { TransactionLedgerServiceHandler } from '../../services/payment-service/src/modules/transactionLedger';

describe('E2E Microservices Distributed Saga Suite', () => {
  test('Order Placement & Payment Processing Saga', async () => {
    const auth = new UserAccountServiceHandler();
    const catalog = new ProductMasterServiceHandler();
    const order = new OrderHeaderServiceHandler();
    const payment = new TransactionLedgerServiceHandler();

    const user = await auth.register({ name: 'Customer', code: 'CUST-01', status: 'ACTIVE', metadata: {} });
    const product = await catalog.register({ name: 'Server', code: 'SKU-01', status: 'ACTIVE', metadata: {} });
    const ord = await order.register({ name: 'Order 1', code: 'ORD-01', status: 'PENDING', metadata: { userId: user.id, productId: product.id } });
    const tx = await payment.register({ name: 'Payment 1', code: 'TX-01', status: 'SUCCESS', metadata: { orderId: ord.id } });

    expect(user.id).toBeDefined();
    expect(product.id).toBeDefined();
    expect(ord.id).toBeDefined();
    expect(tx.id).toBeDefined();
  });
});
