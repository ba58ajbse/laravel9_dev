const sum = (a: number, b: number): number => a + b;

it('test function sum', () => {
    expect(sum(1, 2)).toBe(3);
});
