async def foo():
    for i in range(5):
        await asyncio.sleep(1)
        yield i

async def bar():
    for i in range(5):
        await asyncio.sleep(2)
        yield i

async def baz(async_generator):
    res = []
    async for _ in async_generator:
        res.append(_)
    return res

start = time.time()
await asyncio.gather(baz(foo()), baz(bar()))
print(time.time() - start)
