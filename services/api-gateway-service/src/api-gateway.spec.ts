import { RouteRegistryServiceHandler, RouteRegistryDomainEntity } from './modules/routeRegistry';

describe('API-GATEWAY Microservice Test Suite', () => {
  let handler: RouteRegistryServiceHandler;

  beforeEach(() => {
    handler = new RouteRegistryServiceHandler();
  });

  test('should create entity and execute business rules', async () => {
    const entity = await handler.register({
      name: 'Test Domain',
      code: 'TEST-001',
      status: 'ACTIVE',
      metadata: {}
    });

    expect(entity).toBeDefined();
    expect(entity.name).toBe('Test Domain');
    const ruleRes = entity.executeBusinessRule1('InputVal', true);
    expect(ruleRes.success).toBe(true);
  });

  test('should run pipeline stages cleanly', async () => {
    const entity = await handler.register({
      name: 'Pipeline Domain',
      code: 'PIPE-001',
      status: 'ACTIVE',
      metadata: {}
    });

    const stageRes = await handler.processPipelineStage1(entity.id, { param: 'Data' });
    expect(stageRes.stage).toBe(1);
  });
});
