using NUnit.Framework;

namespace Calculator.Test
{
    [TestFixture]
    public class CalculatorTest
    {
        [TestCase(     2,      2, Result =      4)]
        [TestCase(    -3,     -4, Result =     -7)]
        [TestCase(     0,      0, Result =      0)]
        [TestCase(100500, 100500, Result = 201000)]
        [TestCase(    10,    -10, Result =      0)]
        public long ShouldAddTwoNumbers(long x, long y)
        {
            return Calculator.Add(x, y);
        }
    }
}
